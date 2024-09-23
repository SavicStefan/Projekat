#include "../h/scheduler.hpp"
#include "../h/prekid.hpp"
#include "../h/c_thread.hpp"

#include "../lib/mem.h"

#include "../test/printing.hpp"

int _thread::threadId = 0;
_thread* _thread::running = nullptr;
time_t _thread::timeCounter = 0;
typedef _thread* thread_t;

_thread::_thread(Body start_routine, void* arg, void* stek, Context context) :
    id(_thread::threadId++), body(start_routine), arg(arg), stek(stek), context(context), timeSlice(DEFAULT_TIME_SLICE), finish(false), blocked(false), sleep(false){}

int _thread::threadCreate(thread_t* handle, void(*start_routine)(void*), void* arg, void* stek){
    stek = __mem_alloc(DEFAULT_STACK_SIZE);
    *handle = new _thread(start_routine, arg, stek, {(uint64)threadWrapper, (uint64)stek + DEFAULT_STACK_SIZE - 1});
    if(start_routine)Scheduler::put(*handle);
    return (*handle)->id;
}

int _thread::napravi(thread_t* handle, void(*start_routine)(void*), void* arg){
    void* stek = __mem_alloc(DEFAULT_STACK_SIZE);
    *handle = new _thread(start_routine, arg, stek, {(uint64)threadWrapper2, (uint64)stek + DEFAULT_STACK_SIZE - 1});
    if(start_routine)Scheduler::put(*handle);
    return (*handle)->id;
}
void _thread::threadWrapper2(){
    _thread::running->body(_thread::running->arg);
    _thread::running->setFinish(true);
    thread_dispatch();
}

void _thread::threadYield(){
    Prekid::pushRegisters();
    _thread::threadDispatch();
    Prekid::popRegisters();
}

void _thread::threadDispatch(){
    _thread* old = _thread::running;
    if(!old->getFinish() && !old->getSleep() && !old->getBlocked())Scheduler::put(old);
    _thread::running = Scheduler::get();
    _thread::contextSwitch(&old->context, &_thread::running->context);
}

void _thread::threadWrapper(){
    Prekid::popSppSpie();
    _thread::running->body(_thread::running->arg);
    _thread::running->setFinish(true);
    thread_dispatch();
}

void _thread::threadExit(){
    _thread::running->setFinish(true);
    thread_dispatch();
}
