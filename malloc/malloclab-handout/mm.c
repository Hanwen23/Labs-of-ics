/*
 * Segregated支持的显式空闲链表
 * 使用分离链表来储存指向空闲块的指针，每一个链表对应于一个大小类
 * 分配块由头部，尾部以及有效载荷组成；空闲块由头部，尾部，前驱指针和后继指针组成
 * 每分配一个块时，需要先找到分配大小对应的大小类，然后遍历该链表寻找满足要求的块，如果没有，则需要再更大的大小类中寻找
 * 在重分配阶段，需要对块进行分割，同时也需要对尾部块进行特判，直接扩展即可
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "memlib.h"
#include "mm.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/

team_t team = {
    "张瀚文",
    "2023012244",
    "zhanghw23@mails.tsinghua.edu.cn",
    "",
    ""
};

static char *heap_list;

/* 16 bytes alignment */
#define ALIGNMENT                16

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size)              (((size) + (ALIGNMENT - 1)) & ~(ALIGNMENT - 1))

#define SIZE_T_SIZE              (ALIGN(sizeof(size_t)))

#define WORD_SIZE                8                                    /* Word and header/footer size */
#define DWORD_SIZE               16                                   /* Double word size */
#define CHUNKSIZE                1 << 7                               /* Extend heap by this amount */

#define CLASS_SIZE               21// 大小类总数
#define MINIMUM_SIZE             32// 最小空闲块大小

#define MAX(x,y)                 ((x >= y) ? (x) : (y))

#define PACK(size, alloc)        ((size) | (alloc))

#define GET(p)                   (*((unsigned long*)(p)))
#define PUT(p,val)               ((*((unsigned long*)(p))) = (unsigned long)(val))

#define GET_SIZE(bp)             (GET(bp) & ~0xF)
#define GET_ALLOC(bp)            (GET(bp) &  0x1)

#define HDRP(bp)                 ((char*)bp - WORD_SIZE)                        
#define FTRP(bp)                 ((char*)bp + GET_SIZE(HDRP(bp)) - DWORD_SIZE) 

#define NEXT_BLK(bp)             ((char*)bp + GET_SIZE((char *)(bp)- WORD_SIZE))
#define PREV_BLK(bp)             ((char*)bp - GET_SIZE((char *)(bp)- DWORD_SIZE))

#define SEARCH(v)                ((v) > (1ull << 24) ? 20 : (64 - __builtin_clzll((v) - 1) - 5))  // 如果大于2^24，则直接返回到最后一个大小类，否则，需要返回到Log2(v)-5，这是因为最小空闲块为32

#define PRED(bp)                 ((char*)(bp) + WORD_SIZE)// 指向本块PRED指针的指针
#define SUCC(bp)                 ((char*)bp)// 指向本块SUCC指针的指针

#define FREE_BLK_PREVIOUS(bp)    (GET(PRED(bp)))// 指向本块前驱的指针
#define FREE_BLK_NEXT(bp)        (GET(SUCC(bp)))// 指向本块后继的指针

static void *extend_heap(size_t words);
static void *coalesce(void *bp);
static void *find_fit(size_t size);
static void place(char **bp, size_t);

// 插入空闲块
static void freelist_insert(char *bp) {
    size_t size = GET_SIZE(HDRP(bp));
    int _index = SEARCH(size);
    char *ptr_index = mem_heap_lo() + _index * WORD_SIZE;
    
    // 如果链表为空，将新块插入链表头
    if ((char *)FREE_BLK_NEXT(ptr_index) == NULL) {
        PUT(SUCC(bp), NULL);// 新块的后继指针为空
        PUT(PRED(bp), ptr_index);// 新块的前驱指针原链表头
    } 
    else {// 链表不为空，将新块插入到链表头部，头插法，LIFO后进先出，避免遍历
        char *first = (char *)GET(ptr_index); // 当前链表的第一个块（原表头）
        // 将新块的后继指针指向原链表头
        PUT(SUCC(bp), first);
        PUT(PRED(bp), ptr_index);
        PUT(PRED(first), bp);// 将原表头的前驱设置为bp
    }
    PUT(ptr_index, bp);
}

// 删除空闲块
static void freelist_remove(char *bp) {
    size_t size = GET_SIZE(HDRP(bp));
    int _index = SEARCH(size);
    char *ptr_index = mem_heap_lo() + _index * WORD_SIZE;
    // case1：前驱和后继均不为空
    if((char *)(FREE_BLK_NEXT(bp)) != NULL && (char *)(FREE_BLK_PREVIOUS(bp)) != NULL){
        PUT(SUCC(FREE_BLK_PREVIOUS(bp)), FREE_BLK_NEXT(bp));// 前驱的后继设置为原来的后继
        PUT(PRED(FREE_BLK_NEXT(bp)), FREE_BLK_PREVIOUS(bp));// 后继的前驱设置为原来的前驱
    }
    // case2：后继为空，链表尾块
    else if((char *)(FREE_BLK_NEXT(bp)) == NULL && (char *)(FREE_BLK_PREVIOUS(bp)) != NULL){
        PUT(SUCC(FREE_BLK_PREVIOUS(bp)), NULL);// 将前驱节点的后继置为空
    }
    // case3：前驱为空，链表首块
    else if((char *)(FREE_BLK_NEXT(bp)) != NULL && (char *)(FREE_BLK_PREVIOUS(bp)) == NULL){
        PUT(ptr_index, FREE_BLK_NEXT(bp));// 设置链表头
        PUT(PRED(FREE_BLK_NEXT(bp)), ptr_index);// 将后继节点的前驱设置为链表头
    }
    // case4：前驱和后继均为空，只有一个空闲块
    else{
        PUT(ptr_index, NULL);// 空闲链表置为空
    }
}

// 堆扩展 Credits:CSAPP P600 图9-45
static void* extend_heap(size_t words) {
    char* bp;
    size_t size;

    size = (words % 2) ? (words + 1): words;
    if((long)(bp = mem_sbrk(size)) == -1)
        return NULL;

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    PUT(HDRP(NEXT_BLK(bp)), PACK(0, 1));

    return coalesce(bp);
}

// 空块合并 Credits:CSAPP P601 图9-46
static void *coalesce(void *bp) {
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLK(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLK(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if (prev_alloc && next_alloc) {// 前后均不为空
        freelist_insert(bp);// 插入空闲块
        return bp;
    }
    else if (prev_alloc && !next_alloc) {// 前不为空，后为空，与后继合并
        size += GET_SIZE(HDRP(NEXT_BLK(bp)));
        freelist_remove(NEXT_BLK(bp));// 从链表中取出后继块
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
        freelist_insert(bp);// 插入本块与后继合并后的块
    }
    else if (!prev_alloc && next_alloc) {// 前为空，后不为空，与前驱合并
        size += GET_SIZE(HDRP(PREV_BLK(bp)));
        freelist_remove(PREV_BLK(bp));// 从链表中取出前驱块
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLK(bp)), PACK(size, 0));
        bp = PREV_BLK(bp);// 移动当前指针到前驱
        freelist_insert(bp);// 插入本块与后继合并后的块
    }
    else {// 前驱、后继均为空
        size += GET_SIZE(HDRP(PREV_BLK(bp))) + GET_SIZE(FTRP(NEXT_BLK(bp)));
        freelist_remove(PREV_BLK(bp));
        freelist_remove(NEXT_BLK(bp));// 从链表中取出前驱和后继块
        PUT(HDRP(PREV_BLK(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLK(bp)), PACK(size, 0));
        bp = PREV_BLK(bp);
        freelist_insert(bp);// 插入新块
    }
    return bp;
}

// 块查找，采取首次适配策略
static void *find_fit(size_t size) {
    unsigned long size_found;
    char *tmp;
    int _index = SEARCH(size);// 找到所属大小类
    for (; _index < CLASS_SIZE; _index++) {// 如果没有适配的块，那么转向更大的大小类
        char *ptr_index = mem_heap_lo() + _index * WORD_SIZE;
        tmp = (char *)FREE_BLK_NEXT(ptr_index);// 从当前大小类的头节点开始
        // 遍历当前大小类链表中的所有块
        for (; tmp ; tmp = (char *)FREE_BLK_NEXT(tmp)){
            size_found = GET_SIZE(HDRP(tmp));
            if(size_found >= size){
                return tmp;
            }
        }
    }
    return NULL;// 如果没有找到合适的块，返回 NULL
}

// 块放置 Credits:CSAPP P619 9.9
static void place(char **bp, size_t size) {
    size_t csize = GET_SIZE(HDRP(*bp));

    if (!GET_ALLOC(HDRP(*bp))) {// 为mm_realloc做特判，如果之前已经分配过，那么就不需要在空闲链表中删除
        freelist_remove(*bp);
    }

    // 如果剩余空间 csize - size 大于等于最小块大小，则可以进行分割
    if (csize - size >= MINIMUM_SIZE) {
        // 将当前块的前半部分标记为已分配
        PUT(HDRP(*bp), PACK(size, 1));
        PUT(FTRP(*bp), PACK(size, 1));

        // 更新剩余部分块的头部和尾部为未分配
        char *next_block = NEXT_BLK(*bp);
        PUT(HDRP(next_block), PACK(csize - size, 0));
        PUT(FTRP(next_block), PACK(csize - size, 0));

        // 将剩余部分的块插入到空闲链表中
        freelist_insert(next_block);
    } 
    else {
        // 如果剩余空间不够分割，则直接标记整个块为已分配
        PUT(HDRP(*bp), PACK(csize, 1));
        PUT(FTRP(*bp), PACK(csize, 1));
    }
}

// mm_init 初始化
int mm_init(void) {
    int i = 0;
    heap_list = mem_sbrk(CLASS_SIZE * WORD_SIZE);// 为空闲链表申请空间
    if (heap_list == (void *)-1) {
        return -1;
    }
    // 初始化空闲块指针数组
    while (i < CLASS_SIZE) {
        PUT(mem_heap_lo() + i * WORD_SIZE, NULL);
        i++;
    }
    // 确保堆内存连续性，扩展堆并为序言块和结尾块分配空间
    if (mem_sbrk(3 * WORD_SIZE) == (void *)-1) {
        return -1;
    }
    // 初始化序言块头部
    PUT(mem_heap_lo() + CLASS_SIZE*WORD_SIZE, PACK(DWORD_SIZE, 1));// 序言块头部
    PUT(mem_heap_lo() + (CLASS_SIZE+1)*WORD_SIZE, PACK(DWORD_SIZE, 1));// 序言块尾部
    PUT(mem_heap_lo() + (CLASS_SIZE+2)*WORD_SIZE, PACK(0, 1));// 结尾块头部

    // 更新 heap_list，指向序言块尾部后的有效载荷区域
    heap_list += (CLASS_SIZE + 1) * WORD_SIZE;

    // 扩展堆
    if (extend_heap(CHUNKSIZE) == NULL) {
        return -1;
    }
    return 0;
}

// mm_malloc 空间分配 Credits:CSAPP P602 图9-47
void *mm_malloc(size_t size) {
    size_t asize;
    size_t extend_size;
    char *bp;

    if(size == 0) return NULL;

    if (size <= DWORD_SIZE) {
        asize = 2 * DWORD_SIZE;
    }
    else {
        asize = DWORD_SIZE * ((size + (DWORD_SIZE) + (DWORD_SIZE - 1)) / DWORD_SIZE);
    }// 对齐到16字节

    // 找到适配块则放置块
    if((bp = find_fit(asize)) != NULL){
        place(&bp, asize);
        return bp;
    }

    // 未找到适配块，分配更多空间
    extend_size = MAX(asize, CHUNKSIZE);
    if((bp = extend_heap(extend_size)) == NULL) {
        return NULL;
    }
    place(&bp, asize);
    return bp;
}

// mm_free 释放块并合并 Credits:CSAPP P601 图9-46
void mm_free(void *bp) {
    size_t size = GET_SIZE(HDRP(bp));
    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    coalesce(bp);
}

// mm_realloc 重新分配
void *mm_realloc(void *ptr, size_t size) {
    // ptr为NULL，那么相当于调用了mm_malloc(size)
    if(ptr == NULL) {   
        return mm_malloc(size);
    }
    // 如果size为0，那么就相当于调用了mm_free(ptr)，然后返回NULL
    else if(size == 0){
        mm_free(ptr);
        return NULL;
    }
    size_t asize;
    if (size <= DWORD_SIZE) {
        asize = 2 * DWORD_SIZE;
    }
    else {
        asize = DWORD_SIZE * ((size + (DWORD_SIZE) + (DWORD_SIZE - 1)) / DWORD_SIZE);
    }
    size_t old_size = GET_SIZE(HDRP(ptr));
    char *newptr;
    // Case 1 and Case 2：old_size >= asize
    if(asize <= old_size) {
        if(old_size >= (asize + MINIMUM_SIZE)){
            PUT(HDRP(ptr), PACK(asize, 1));
            PUT(FTRP(ptr), PACK(asize, 1));
            newptr = NEXT_BLK(ptr);
            PUT(HDRP(newptr), PACK(old_size-asize, 0));
            PUT(FTRP(newptr), PACK(old_size-asize, 0));
            freelist_insert(newptr);
            return ptr;
        }// Case 1：针对realloc2-bal.rep，如果old_size和asize之间的差值大于一个最小空块，则将空块分割出来
        return ptr;// Case2：差值小于一个空块，直接返回ptr，无需扩展
    }
    else{// Case3 and 4 and 5 and 6：old_size <= asize
        size_t next_size = GET_SIZE(HDRP(NEXT_BLK(ptr)));
        size_t prev_size = GET_SIZE(HDRP(PREV_BLK(ptr)));
        // Case3：针对realloc-bal.rep，对于编号为0的处于堆末尾的块进行“差值”扩容realloc，不需要释放后申请新的空间
        if(!next_size && asize >= old_size){// next_size=0，说明已经到了结尾块
            if((long)(mem_sbrk(asize - old_size)) == -1)
                return NULL; 
            
            PUT(HDRP(ptr), PACK(asize, 1));
            PUT(FTRP(ptr), PACK(asize, 1));
            PUT(HDRP(NEXT_BLK(ptr)), PACK(0, 1)); 
            place((char **)&ptr, asize);
            return ptr;
        }
        else {// 针对realloc2-bal.rep，在待重分配块附近寻找可以合并的空闲块合并
            if(!GET_ALLOC(HDRP(NEXT_BLK(ptr))) && (old_size + next_size >= asize)) {// Case4：后块空闲且空间足够，直接释放再分配 
                old_size += next_size;
                freelist_remove(NEXT_BLK(ptr));// 从空闲链表中移除后块
                PUT(HDRP(ptr), PACK(old_size, 1));
                PUT(FTRP(ptr), PACK(old_size, 1));
                place((char **)&ptr, old_size);
                return ptr;
            }
            if(!GET_ALLOC(HDRP(PREV_BLK(ptr))) && (old_size + prev_size >= asize)) {// Case5：前块空闲且空间足够
                void *prev_blk = PREV_BLK(ptr);// 获取前块指针
                freelist_remove(PREV_BLK(ptr));// 从空闲链表中移除前块
                // 将当前块的数据迁移到前块
                memmove(prev_blk, ptr, old_size - DWORD_SIZE);
                // 更新合并后的前块头尾
                old_size += prev_size;// 更新前块大小
                PUT(HDRP(prev_blk), PACK(old_size, 1));
                PUT(FTRP(prev_blk), PACK(old_size, 1));
                place((char **)&prev_blk, old_size);
                return prev_blk;
            }
            else{// Case6：最朴素的重分配
                newptr = mm_malloc(asize);
                if(newptr == NULL)
                    return NULL;
                memcpy(newptr, ptr, old_size - WORD_SIZE);
                mm_free(ptr);
                return newptr;
            }
        }
    }
    return ptr;
}