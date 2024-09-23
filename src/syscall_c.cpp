#include "../h/syscall_c.hpp"

#include "../lib/mem.h"
#include "../lib/console.h"
#include "../h/memoryAllocator.hpp"

#include "../h/prekid.hpp"

uint64 stavi(uint64 code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0){
    __asm__ volatile("ecall");
    uint64 ans;
    __asm__ volatile("mv %0, a0" : "=r"(ans));
    return ans;
}

void* mem_alloc (size_t size){
//    if(Prekid::super)return MemoryAllocator::mem_alloc(size);

    size_t sz = size;
//    if(size % MEM_BLOCK_SIZE)sz += MEM_BLOCK_SIZE - (size % MEM_BLOCK_SIZE);
    return (void*)stavi(0x01, (uint64)sz);
}

int mem_free (void* ptr){
//    if(Prekid::super){
//        MemoryAllocator::mem_free(ptr);
//        return 0;
//    }
    return (int)stavi(0x02, (uint64)ptr);
}

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    void* stack_space = MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    return (int)stavi(0x11, (uint64)handle, (uint64)start_routine, (uint64)arg, (uint64)stack_space);
}

int thread_exit (){
    return (int)stavi(0x12);
}

void thread_dispatch (){
    stavi(0x13);
}

void yield(){
    stavi(0x14);
}

int sem_open (sem_t* handle, unsigned init){
    return (int)stavi(0x21, (uint64)handle, (uint64)init);
}

int sem_close (sem_t handle){
    return (int)stavi(0x22, (uint64)handle);
}

int sem_wait (sem_t id){
    return (int)stavi(0x23, (uint64)id);
}

int sem_signal (sem_t id){
    return (int)stavi(0x24, (uint64)id);
}

int sem_timedwait(sem_t id, time_t timeout){
    return (int)stavi(0x25, (uint64)id, (uint64)timeout);
}

int sem_trywait(sem_t id){
    return (int)stavi(0x26, (uint64)id);
}

int time_sleep (time_t t){
    return (int)stavi(0x31, (uint64)t);
}

char getc (){
//    return __getc();
    return (char)stavi(0x41);
}

void putc (char c){
    __putc(c);
//    stavi(0x42, (uint64)c);
}