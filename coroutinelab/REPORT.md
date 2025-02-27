## ICS24 LAB2 Coroutine Lab 实验报告

张瀚文 计36 2023012244

### Task1
context.S中对于coroutine_switch的实现如下：  
```
.global coroutine_switch
coroutine_switch:
    # TODO: Task 1
    # 保存 callee-saved 寄存器到 %rdi 指向的上下文
    # 保存的上下文中 rip 指向 ret 指令的地址（.coroutine_ret）
    leaq .coroutine_ret(%rip), %rax
    movq %rax, 120(%rdi)
    movq %rsp, 64(%rdi)
    movq %rbp, 72(%rdi)
    movq %rbx, 80(%rdi)
    movq %r12, 88(%rdi)
    movq %r13, 96(%rdi)
    movq %r14, 104(%rdi)
    movq %r15, 112(%rdi)
    # 从 %rsi 指向的上下文恢复 callee-saved 寄存器
    # 最后 jmpq 到上下文保存的 rip
    movq 64(%rsi), %rsp
    movq 72(%rsi), %rbp
    movq 80(%rsi), %rbx
    movq 88(%rsi), %r12
    movq 96(%rsi), %r13
    movq 104(%rsi), %r14
    movq 112(%rsi), %r15
    jmpq *120(%rsi)
```
阅读代码可知，coroutine_switch的作用是保存callee-saved寄存器或者恢复callee-saved寄存器，这里的callxx_registers并不是真的寄存器，而是每个单元格是64位的数组，只作为值的暂存区。在保存callee-saved寄存器时：  
```C++
coroutine_switch(callee_registers, caller_registers);
```
第一个参数为callee_registers，即此时`%rdi`保存的是指向储存寄存器信息的数组` uint64_t callee_registers[(int)Registers::RegisterCount];`的地址，因此根据`enum class Registers`中不同寄存器信息的偏移量，可以将寄存器信息保存在`%rdi`指向的上下文。
同理，在恢复callee-saved寄存器时：  
```C++
coroutine_switch(caller_registers, callee_registers);
```
第二个参数为callee_registers，即此时`%rsi`保存的是指向储存寄存器信息的数组` uint64_t callee_registers[(int)Registers::RegisterCount];`的地址，因此根据`enum class Registers`中不同寄存器信息的偏移量，可以将寄存器信息从`%rsi`指向的上下文恢复到寄存器中。  
context.h中`resume()`代码：  
```C++
virtual void resume() {
    // 调用 coroutine_switch
    // 在汇编中保存 callee-saved 寄存器，设置协程函数栈帧，然后将 rip 恢复到协程 yield 之后所需要执行的指令地址。
    coroutine_switch(caller_registers, callee_registers);
  }
```
可以看到，resume()函数调用了coroutine_switch函数，将callee_registers作为第二个参数传入，即恢复callee-saved寄存器。  
common.h中`yield()`函数：  
```C++
void yield() {
  if (!g_pool->is_parallel) {
    // 从 g_pool 中获取当前协程状态
    auto context = g_pool->coroutines[g_pool->context_id];
    // 调用 coroutine_switch 切换到 coroutine_pool 上下文
    coroutine_switch(context->callee_registers, context->caller_registers);
  }
}
```
coroutine_pool.h中`serial_execute_all()`函数（在实现Task1时）：  
```C++
  void serial_execute_all() {
    is_parallel = false;
    g_pool = this;

    while (true) {
      bool not_finished = false;//设置bool变量，用于判断是否有未完成的协程
      int index = 0;//设置当前协程的索引
      for (auto context : coroutines) {
        if (!context->finished){
          not_finished = true;
          context_id = index;
          context->resume();//切换到协程执行
        }
        index++;//更新索引
      }
      if (not_finished==false) {
        break;//如果没有未完成的协程，则退出循环
      }
    }

    for (auto context : coroutines) {
      delete context;
    }
    coroutines.clear();
  }
```  
思路：如果存在协程未结束，则轮询，找到未结束的协程进入，同时要更改`context_id`。  
<b>协程过程栈变化：  </b>  
![Coroutine Stack1](img\coroutine_stack1.jpg "Coroutine Stack Diagram1")    
![Coroutine Stack2](img\coroutine_stack2.jpg "Coroutine Stack Diagram2")
<b>协程执行过程： </b>  
1.`serial_execute_all()`函数判断当下是否存在未完成的协程，如果存在，则调用`resume()`函数，切换到协程执行。  
2.调用`resume()`函数，保存callee-saved寄存器，设置协程函数栈帧，然后将`coroutine_entry()`的地址存入`rip`寄存器，之后函数将从`coroutine_entry()`开始执行。  
3.在执行`coroutine_entry()`函数时  
```
.global coroutine_entry
coroutine_entry:
    movq %r13, %rdi
    callq *%r12
```
将`%r13`作为接下来调用函数的参数（本协程指针），然后调用了`%r12`中的函数（`coroutine_main()`函数），在这个函数中：  
```C++
void coroutine_main(struct basic_context *context) {
  context->run();//协程运行
  context->finished = true;//修改当前协程的finished状态为已完成
  coroutine_switch(context->callee_registers, context->caller_registers);

  // unreachable
  assert(false);
}
```
调用了`context->run()`函数，会调用其参数中传入的`show()`函数：  
```C++
void show(int x) {
  for (int i = 0; i < x; i++) {
    p.push_back(i);
    printf("in show(): %d\n", i);
    yield();
  }
}
```
每次输入后就会通过`yield()`函数切换回调度器，之后再切换到其他协程执行。      
<b>代码分析：</b>  
```C++
    uint64_t rsp = (uint64_t)&stack[stack_size - 1];
    rsp = rsp - (rsp & 0xF);
```  
首先，`uint64_t rsp = (uint64_t)&stack[stack_size - 1];`获取stack最后一个元素的地址并强制转化为uint64_t类型。  
然后，`rsp = rsp - (rsp & 0xF);`将rsp向下对齐到16字节，原理是`rsp & 0xF`得到rsp的最后四位，再通过相减可以得到对齐后的地址（使最后4位变为0）。  
此处代码
```C++
void coroutine_main(struct basic_context *context) {
  context->run();//协程运行
  context->finished = true;//修改当前协程的finished状态为已完成
  coroutine_switch(context->callee_registers, context->caller_registers);

  // unreachable
  assert(false);
}
```
首先运行`run()`函数，在`run()`的过程中可能会`yield()`回调度器，完全运行完之后修改当前协程的`finished`状态为已完成，之后回到调度器。  
<b>浮点和向量寄存器：</b>  
由于浮点数和向量在传参过程中要么是通过栈传递，要么是通过被调用者保存的寄存器传递，因此并不需要在协程过程中保存这些寄存器。
### Task2  
common.h中`sleep()`函数：  
```C++
void sleep(uint64_t ms) {
  if (g_pool->is_parallel) {
    auto cur = get_time();
    while (
        std::chrono::duration_cast<std::chrono::milliseconds>(get_time() - cur)
            .count() < ms)
      ;
  } 
  else {
    // 从 g_pool 中获取当前协程状态
    auto context = g_pool->coroutines[g_pool->context_id];
    // 将协程置为不可用状态
    context->ready= false;
    // 获取当前时间，更新 ready_func
    auto cur= get_time();
    //ready_func：检查当前时间，如果已经超时，则返回 true
    context->ready_func = [&]() {
      auto time_elapsed =
          std::chrono::duration_cast<std::chrono::milliseconds>(get_time() - cur)
             .count();
      if(time_elapsed >= ms){
        return true;//超时，返回 true
      }
      else{
        return false;
      }//未超时，返回 false
    };
    // 调用 coroutine_switch 切换到 coroutine_pool 上下文
    coroutine_switch(context->callee_registers, context->caller_registers);
  }
}

```
`sleep()`函数首先设置`ready`状态为false，然后获取当前时间，并设置`ready_func`为一个lambda表达式，用于检查当前时间是否超时来更新`ready_func`。  
coroutine_pool.h中`serial_execute_all()`函数：  
```C++
  void serial_execute_all() {
    is_parallel = false;
    g_pool = this;

    while (true) {
      bool not_finished = false;
      int index = 0;
      for (auto context : coroutines) {
        if (!context->finished){
          not_finished = true;
          if(!context->ready){
            context->ready=context->ready_func();
          }//如果协程还未准备好，则调用ready_func()函数，判断协程是否准备好
          if(context->ready){
            context_id = index;
            context->resume();
          }//如果协程准备好，则调用resume()函数，执行协程函数
        }
        index++; 
      }
      if (not_finished==false) {
        break;//如果没有未完成的协程，则退出循环
      }
    }

    for (auto context : coroutines) {
      delete context;
    }
    coroutines.clear();
  }
```  
当协程池中存在未完成的协程时，首先检查协程是否已经准备好了，如果已经准备好了，则调用`resume()`函数，执行协程函数。  
如果没有准备好，那么调用`ready_func()`函数，来判断协程当前是否已经准备好了。 
<b>sleep_sort过程协程变化：</b>
![Sleep1](img\sleep1.jpg)    
![Sleep2](img\sleep2.jpg)  
![Sleep3](img\sleep3.jpg)  
<b>sleep_sort优化：</b>  
目前的协程库实现方式是轮询`ready_func()`是否等于true，这可能会消耗时间，因此可以在`basic_context`中维护一个“准备好需要的时间（time_to_ready）”，这样在每次轮询时，只需要判断当前时间和开始时间之间的差是否大于等于`time_to_ready`，就可以判断协程是否已经准备好了，避免了多次调用`ready_func()`浪费时间。    
```C++
//basic_context
uint64_t time_to_ready;//添加“准备好需要的时间”变量

//sleep()函数
context->time_to_ready=ms;//计算“准备好需要的时间”，其值就是当下的传入的ms值

//serial_execute_all()函数
auto start_time = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::system_clock::now().time_since_epoch()).count();//获取当前时间

if (!context->finished){
    not_finished = true;
    if(!context->ready){
      auto now_ms = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::system_clock::now().time_since_epoch()).count();
      if(now_ms - start_time >= context->time_to_ready){
        context->ready = true;
      }//判断当前时间和开始时间的差是否已经超过了“准备好需要的时间”
    }//如果协程还未准备好，则调用ready_func()函数，判断协程是否准备好
    if(context->ready){
      context_id = index;
      context->resume();
    }//如果协程准备好，则调用resume()函数，执行协程函数
}
```
### Task3
在binary_search.cpp的`lookup_coroutine()`函数中插入：  
```C++
    // 使用 __builtin_prefetch 预取容易产生缓存缺失的内存
    __builtin_prefetch(&table[probe]);
    // 并调用 yield
    yield();
```
在数据量较大时，`builtin_prefetch()`先试用指令指示CPU预取数据，然后调用`yield()`函数切换到其他协程执行，这样可以避免在大数据量情况下等待预取数据过程浪费的时间，提高效率。  
<b>性能提升效果：</b>  
首先，研究`Size`和`Loops`对于性能的影响。  
1.<b>Size：</b>    
发现在`log2_bytes`小于等于25时，使用协程的性能其实是低于常规方法的，而在`log2_bytes`等于26时，协程方法与常规方法的性能相差不大，在`log2_bytes`大于等于27时，协程方法便展示出了较大的优势。    
可能的原因分析：在数据量较小时，使用协程方法来预取数据切换导致的开销对于性能的影响是大于从内存读取数据的，而在数据量较大时，由于数据量较大，直接从内存中读取数据的开销变大，因此使用协程方法来预取数据可以提高性能（实验数据取自loop=1000000，Batch size=8）。
![log2_bytes](img\log2_bytes.png)
2.<b>Loops：</b>
由测试可知，取`log2_bytes=32``Batch size=8`时，在各种`Loop`输入之下，协程方法的性能相较于常规方法都有所提升。  
![Loop](img\Loop.png)
3.<b>Batch size：</b>  
取默认的`log2_bytes=32`以及`Loop=1000000`，在`Batch size`的不同取值下，协程方法的性能基本展现出先升高再降低的趋势。  
![Batch size](img\Batch.png)  
由图中数据可知，在`Batch size`取值为4-10时，协程方法展现出来较大的性能优势。以下对`Batch size`的影响进行进一步分析：  
 - 当`Batch size`较小时，协程方法的性能并无优势，这可能是因为`Batch size`较小时协程数量较少，而创建协程和销毁协程本身需要时间，因此协程方法的性能并不如常规方法。  
 - 当`Batch size`较大时，协程方法的性能也无优势，这可能是因为当`Batch size`较大时在切换协程的时间开销变大，因此协程方法的性能也不如常规方法。  

### 交流参考声明
在完成本次lab的过程中，我曾经与符家祺同学进行过交流。  
我参考过学长的代码，https://github.com/zhaozkTHU/CoroutineLab/blob/main/REPORT.md    

### 总结和感想

本次实验难度还是较大，虽然代码量较小，但是涉及的知识点较多，同时原代码框架的理解难度也比较大，但在完成本次实验之后，我对于协程机制有了一个初步的认识，也体会到了自己解决问题的喜悦。  