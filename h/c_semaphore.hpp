#ifndef c_semaphore
#define c_semaphore

#include "syscall_c.hpp"
#include "list.hpp"
#include "c_thread.hpp"

class _sem{
public:
    int id;
    int init;
    List<_thread> *blocked;
//public:
    static int semId;
    _sem(int);

    static int semOpen(sem_t*, int);
    static int semClose(sem_t);
    static int semWait(sem_t);
    static int semSignal(sem_t);
    static int semTrysignal(sem_t);
    static int semTimedwait(sem_t, time_t);
    static int semTrywait(sem_t);

    void block();
    _thread* unblock();

};

#endif