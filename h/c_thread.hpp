#ifndef c_thread
#define c_thread

#include "syscall_c.hpp"
#include "../lib/hw.h"

using Body = void (*)(void*);

class _thread{
public:
    struct Context{
        uint64 ra;
        uint64 sp;
    };

    int id;
    Body body;
    void* arg;

    void* stek;
    Context context;
    time_t timeSlice;
    bool finish;
    bool blocked = false;
    bool sleep;

    static void contextSwitch(Context* oldContext, Context* newContext);

    sem_t semaphore = nullptr;
    int rtv = 0;

    friend class Prekid;
    friend class _sem;
    friend class _sleep;
//public:
    static time_t timeCounter;
    static int threadId;

    static _thread* running;

    _thread(Body, void*, void*, Context);

    static int threadCreate(thread_t*, void(*)(void *), void*, void*);
    static int napravi(thread_t*, void(*)(void *), void*);
    static void threadYield();
    static void threadDispatch();
    static void threadExit();
    static void threadWrapper();
    static void threadWrapper2();

    bool getFinish() const { return this->finish; }
    void setFinish(bool f){ this->finish = f; }

    bool getBlocked() const { return this->blocked; }
    void setBlocked(bool f){ this->blocked = f; }

    bool getSleep() const { return this->sleep; }
    void setSleep(bool f){ this->sleep = f; }

    time_t getTimeSlice(){ return timeSlice; }

};

#endif