#include "../h/syscall_cpp.hpp"
#include "../h/c_thread.hpp"

#include "../test/printing.hpp"

#include "../h/memoryAllocator.hpp"
#include "../lib/mem.h"

void* operator new (size_t size){
    size_t sz = size;
    if(size % MEM_BLOCK_SIZE)sz += MEM_BLOCK_SIZE - (size % MEM_BLOCK_SIZE);
    return mem_alloc(sz);
}

void* operator new [](size_t size){
    size_t sz = size;
    if(size % MEM_BLOCK_SIZE)sz += MEM_BLOCK_SIZE - (size % MEM_BLOCK_SIZE);
    return mem_alloc(sz);
}

void operator delete (void* ptr){
    mem_free(ptr);
}

void operator delete[](void* ptr){
    mem_free(ptr);
}

// Thread
Thread::Thread (void (*body)(void*), void* arg){
    this->body = body; this->arg = arg;
}

Thread::~Thread(){
    myHandle->setFinish(true);
    delete myHandle;
}

int Thread::start (){
   return thread_create(&myHandle, body, arg);
}

void Thread::dispatch(){
    thread_dispatch();
}

int Thread::sleep (time_t t){
    return time_sleep(t);
}

void Thread::threadWrapper(void *thread){
    ((Thread*)thread)->run();
}

Thread::Thread() : Thread(threadWrapper, (void*)this){
}

// Semaphore
Semaphore::Semaphore (unsigned init){
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore(){
    sem_close(myHandle);
}

int Semaphore::wait(){
    return sem_wait(myHandle);
}

int Semaphore::signal(){
    return sem_signal(myHandle);
}

int Semaphore::timedWait (time_t time){
    return sem_timedwait(myHandle, time);
}

int Semaphore::tryWait(){
    return sem_trywait(myHandle);
}

// PeriodicThread
PeriodicThread::PeriodicThread (time_t period){
    this->period = period;
}

void PeriodicThread::terminate (){
    this->period = 0;
}

void PeriodicThread::periodicWrapper(void *thread){
    PeriodicThread* p = (PeriodicThread*)thread;
    while(p->period != 0){
        p->periodicActivation();
        Thread::sleep(p->period);
    }
}

// Console
char Console::getc (){
    return ::getc();
}

void Console::putc (char c){
    ::putc(c);
}

