#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

team_t team = {
    "张瀚文",
    "2023012244",
    "zhanghw23@mails.tsinghua.edu.cn",
    "",
    ""
};

#define ALIGNMENT 16

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT - 1)) & ~(ALIGNMENT - 1))

#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

#define WORD_SIZE                8                                    /* Word and header/footer size */
#define DWORD_SIZE               16                                   /* Double word size */
#define CHUNKSIZE                1 << 12                              /* Extend heap by this amount */

#define MAX(x,y)                 ((x >= y) ? (x) : (y))

#define PACK(size, alloc)        ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)                   (*((unsigned int*)(p)))
#define PUT(p,val)               ((*((unsigned int*)(p))) = (val))

#define GET_SIZE(bp)             (GET(bp) & ~0xF)
#define GET_ALLOC(bp)            (GET(bp) &  0x1)

#define HDRP(bp)                 ((char*)bp - WORD_SIZE)                        
#define FTRP(bp)                 ((char*)bp + GET_SIZE(HDRP(bp)) - DWORD_SIZE) 

#define NEXT_BLKP(bp)            ((char*)bp + GET_SIZE((char *)(bp)- WORD_SIZE))
#define PREV_BLKP(bp)            ((char*)bp - GET_SIZE((char *)(bp)- DWORD_SIZE))

static void* heap_list = NULL;

/* Coalesce free blocks */
static void* coalesce(void* bp) {
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if (prev_alloc && next_alloc) {
        return bp;//Neither previous nor next block is free, no coalescing
    }
    else if (prev_alloc && !next_alloc) {//Coalesce with next block
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    else if (!prev_alloc && next_alloc) {//Coalesce with previous block
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
        bp = PREV_BLKP(bp);//Move the pointer to the coalesced block
    }
    else {//Coalesce with both previous and next blocks
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);//Move the pointer to the coalesced block
    }
    return bp;
}


/*
 * extend_heap - heap_mem needed to be larger words bytes
 */
static void* extend_heap(size_t words)
{
    char* bp;
    size_t size;

    size = (words % 2) ? (words + 1) * WORD_SIZE : words * WORD_SIZE;
    bp = mem_sbrk(size);
    if((long)bp == -1)
        return NULL;

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));  // End block

    return coalesce(bp);
}

static void* find_fit(size_t size)
{
    void *bp;
    for(bp = heap_list;GET_SIZE(HDRP(bp))> 0; bp = NEXT_BLKP(bp)){
        if(GET_SIZE(HDRP(bp)) == 0) break;  // Prevent out-of-bounds access
        if(!GET_ALLOC(HDRP(bp)) && GET_SIZE(HDRP(bp)) >= size){
            return bp;
        }
    }
    return NULL;
}

static void place(void* bp, size_t size)
{
    size_t csize = GET_SIZE(HDRP(bp));
    if((csize - size) >= (DWORD_SIZE * 2)){
        PUT(HDRP(bp), PACK(size, 1));
        PUT(FTRP(bp), PACK(size, 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize - size, 0));
        PUT(FTRP(bp), PACK(csize - size, 0));
    }
    else {
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}

/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    if((heap_list = mem_sbrk(4 * WORD_SIZE)) == (void*)-1)
        return -1;
    PUT(heap_list, PACK(0, 0));
    PUT(heap_list + (1 * WORD_SIZE), PACK(DWORD_SIZE, 1));
    PUT(heap_list + (2 * WORD_SIZE), PACK(DWORD_SIZE, 1));
    PUT(heap_list + (3 * WORD_SIZE), PACK(0, 1));
    heap_list += (2 * WORD_SIZE);

    if(extend_heap(CHUNKSIZE / WORD_SIZE) == NULL)
        return -1;
    return 0;
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    size_t asize;
    size_t extend_size;
    char *bp;

    if(size == 0) return NULL;

    if(size <= DWORD_SIZE){
        asize = 2 * DWORD_SIZE;
    }
    else{
        asize = DWORD_SIZE * ((size + DWORD_SIZE + (DWORD_SIZE - 1))/DWORD_SIZE);
    }

    if((bp = find_fit(asize)) != NULL){
        place(bp, asize);
        return bp;
    }
    extend_size = MAX(CHUNKSIZE, asize);
    if((bp = extend_heap(extend_size / WORD_SIZE)) == NULL){
        return NULL;
    }
    place(bp, asize);
    return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *bp)
{
    size_t size = GET_SIZE(HDRP(bp));

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    coalesce(bp);
}

/*
 * mm_realloc - Reallocate a block
 */
void *mm_realloc(void *ptr, size_t size)
{
    if(ptr == NULL)
        return mm_malloc(size);//ptr为NULL，那么相当于调用了mm_malloc(size)
    if(size == 0){
        mm_free(ptr);
        return NULL;
    }//如果size为0，那么就相当于调用了mm_free(ptr)，然后返回NULL

    size_t oldsize = GET_SIZE(HDRP(ptr));
    size_t newsize = DWORD_SIZE * ((size + DWORD_SIZE + (DWORD_SIZE - 1))/DWORD_SIZE);
    void *newptr;

    if(newsize <= oldsize)
        return ptr;

    //如果ptr不为NULL，且新块较小，那么就直接返回ptr
    newptr = mm_malloc(newsize);
    if(newptr == NULL)
        return NULL;

    //如果ptr不为NULL，且新块较大，那么就将之前malloc或者realloc的内存块大小更改为size，同时需要对齐到16字节
    memcpy(newptr, ptr, oldsize - WORD_SIZE);//新块复制旧块的内容
    mm_free(ptr);
    return newptr;
}