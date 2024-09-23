#include "../h/prekid.hpp"
#include "../lib/hw.h"
#include "../h/c_thread.hpp"
#include "../h/c_semaphore.hpp"
#include "../h/c_sleep.hpp"
#include "../h/scheduler.hpp"
#include "../h/c_buffer.hpp"
#include "../h/c_console.h"
#include "../h/memoryAllocator.hpp"

#include "../lib/mem.h"
#include "../lib/console.h"

#include "../test/printing.hpp"

bool Prekid::super;

void Prekid::interruptHandler(){
    super = true;

    uint64 volatile arg0; __asm__ volatile("mv %0, a0" : "=r"(arg0));
    uint64 volatile arg1; __asm__ volatile("mv %0, a1" : "=r"(arg1));
    uint64 volatile arg2; __asm__ volatile("mv %0, a2" : "=r"(arg2));
    uint64 volatile arg3; __asm__ volatile("mv %0, a3" : "=r"(arg3));
    uint64 volatile arg4; __asm__ volatile("mv %0, a4" : "=r"(arg4));

    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r" (scause));

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){ // syscall
        uint64 volatile sstatus;
        __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
        uint64 volatile sepc;
        __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
        sepc += 4;

        uint64 code = arg0;

        switch(code){
            case 0x01:{
                size_t size = (size_t)arg1;

                volatile void* p = MemoryAllocator::mem_alloc(size);
//                volatile void* p = __mem_alloc(size);
                __asm__ volatile("mv t0, %0" : : "r"(p));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x02:{
                void* ptr = (void*)arg1;

                volatile int ans = MemoryAllocator::mem_free(ptr);
//                volatile int ans = __mem_free(ptr);
                __asm__ volatile("mv t0, %0" : : "r"(ans));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x11:{
                thread_t* handle = (thread_t*)arg1;
                Body start_routine = (Body)arg2;
                void* arg = (void*)arg3;
                void* stack_space = (void*)arg4;

                volatile int ans = _thread::threadCreate(handle, start_routine, arg, stack_space);
                __asm__ volatile("mv t0, %0" : : "r"(ans));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x12:{
                _thread::threadExit();
                volatile int ans = 0;
                __asm__ volatile("mv t0, %0" : : "r"(ans));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x13:{
                _thread::threadDispatch();
                break;
            }
            case 0x14:{
                _thread::threadYield();
                break;
            }
            case 0x21:{
                sem_t* handle = (sem_t*)arg1;
                int init = (int)arg2;

                volatile int ans = _sem::semOpen(handle, init);
                __asm__ volatile("mv t0, %0" : : "r"(ans));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x22:{
                sem_t handle = (sem_t)arg1;

                volatile int ans = _sem::semClose(handle);
                __asm__ volatile("mv t0, %0" : : "r"(ans));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x23:{
                sem_t id = (sem_t)arg1;

                volatile int ans = _sem::semWait(id);
                __asm__ volatile("mv t0, %0" : : "r"(ans));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x24:{
                sem_t id = (sem_t)arg1;

                volatile int ans = _sem::semSignal(id);
                _thread::threadDispatch();
                __asm__ volatile("mv t0, %0" : : "r"(ans));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x25:{ // TODO sem_timedwati
                sem_t id = (sem_t)arg1;
                time_t timeout = (time_t)arg2;

                volatile int ans = _sem::semTimedwait(id, timeout);
                __asm__ volatile("mv t0, %0" : : "r"(ans));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x26:{ // TODO sem_trywait
                sem_t id = (sem_t)arg1;

                volatile int ans = _sem::semTrywait(id);
                __asm__ volatile("mv t0, %0" : : "r"(ans));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x31:{
                time_t t = (time_t)arg1;

                volatile int ans = _sleep::timeSleep(t);
                __asm__ volatile("mv t0, %0" : : "r"(ans));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x41:{ // getc
                volatile char ans = console::input->getc();
                __asm__ volatile("mv t0, %0" : : "r"(ans));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x42:{ // putc
                volatile char c = (char)arg1;
                console::output->putc(c);
                break;
            }
            default:
                break;
        }

        __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
        __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));

    }
    else if(scause == 0x8000000000000001UL){
        uint64 volatile sstatus;
        __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
        uint64 volatile sepc;
        __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));

        _sleep::update();
        while(!_sleep::empty() && _sleep::getFirstTime() == 0){
            _thread* nit = _sleep::remove_first();


            if(nit->semaphore && nit->semaphore->blocked->izbaci(nit)){
//                __putc('a'); __putc('\n');
                nit->rtv = -2;
                nit->semaphore->init++;
                nit->setSleep(false); nit->setBlocked(false);
            }


            nit->setSleep(false);
            if(!nit->getFinish()){
                Scheduler::put(nit);
            }

        }

        _thread::timeCounter++;
        if(_thread::timeCounter >= _thread::running->getTimeSlice()){
            _thread::timeCounter = 0;
            _thread::threadDispatch();
        }

        uint64 mask = (1 << 1);
        __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));

        __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
        __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));

    }else if(scause == 0x8000000000000009UL){
        uint64 volatile sstatus;
        __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
        uint64 volatile sepc;
        __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));

        int irq = plic_claim();
        while(*((volatile char*)(CONSOLE_STATUS)) & CONSOLE_RX_STATUS_BIT){
            char c = (*(volatile char*)CONSOLE_RX_DATA);
            console::input->putc(c);
        }
        plic_complete(irq);

        __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
        __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));

    }else{
        int volatile X = 1; if(X == X);
    }

    super = false;

}

void Prekid::popSppSpie() {
    super = false;
    uint64 mask = (1 << 8);
    __asm__ volatile("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}