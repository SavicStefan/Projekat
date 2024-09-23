#include "../h/prekid.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "../lib/console.h"
#include "../h/c_thread.hpp"
#include "../h/scheduler.hpp"
#include "../h/c_console.h"
#include "../h/memoryAllocator.hpp"

//#include "../test/printing.hpp"


extern int userMain();

void userWrapper(void*){
//    printString("Poceo\n");
    userMain();
//    printString("Zavrsio\n");
}


int main(){
    MemoryAllocator::mem_init();
    __asm__ volatile("csrw stvec, %[stvec]" : : [stvec] "r" (Prekid::zaPrekide));

//    uint64 mask = (1 << 8);
//    __asm__ volatile("csrs sstatus, %[mask]" : : [mask] "r" (mask));

    Prekid::super = true;

    _thread* main;
    thread_create(&main, nullptr, nullptr);
    _thread::running = main;

    console::init();

    __asm__ volatile("csrs sstatus, 2");

    _thread* userMain;
    thread_create(&userMain, userWrapper, nullptr);

    while(!userMain->getFinish()){
        thread_dispatch();
    }

//    uint64* p = (uint64*)(0x100000);
//    *p = 0x5555;

    return 0;
}

