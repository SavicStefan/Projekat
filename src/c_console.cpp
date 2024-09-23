#include "../h/c_console.h"

#include "../h/c_thread.hpp"

#include "../lib/console.h"

Buffer* console::input = nullptr;
Buffer* console::output = nullptr;

void consoleWrapper(void*){
    console::radi();
}

void console::init() {
    input = new Buffer();
    output = new Buffer();

    _thread* konzola;
    _thread::napravi(&konzola, consoleWrapper, nullptr);

}
void console::radi() {
    while(true){
        __asm__ volatile("csrc sstatus, 2");

        if (console::output->getCount() > 0 && ((*((volatile char *) (CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT))) {
            char c = console::output->getc();
            *(volatile char *) CONSOLE_TX_DATA = c;
        }
        else{
            __asm__ volatile("csrs sstatus, 2");
            thread_dispatch();
        }

    }
}