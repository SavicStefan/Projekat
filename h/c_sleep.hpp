#ifndef c_sleep
#define c_sleep

#include "../lib/hw.h"
#include "c_thread.hpp"
#include "syscall_c.hpp"

class _sleep{

    struct node{
        _thread* info;
        time_t time;
        node* next;
        node(_thread* info, time_t time, node* next) : info(info), time(time), next(next) {}
    };

    static node* head;
    static node* tail;

public:
    static void insert(_thread*, time_t);
    static _thread* remove_first();
    static bool empty();
    static int timeSleep(time_t);
    static void update();
    static time_t getFirstTime();

    static int izbaciSleep(_thread*);

};

#endif