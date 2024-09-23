#ifndef scheduler
#define scheduler

#include "syscall_c.hpp"
#include "list.hpp"
#include "c_thread.hpp"

class Scheduler{
    static List<_thread> ready;
public:
    static _thread* get();
    static void put(_thread* t);
    static void put_first(_thread* t);
    static void print();
};

#endif