#include "../h/c_semaphore.hpp"
#include "../h/scheduler.hpp"
#include "../h/c_sleep.hpp"

#include "../test/printing.hpp"

int _sem::semId = 0;

_sem::_sem(int init) : id(semId++), init(init) {
    blocked = new List<_thread>();
}

int _sem::semOpen(sem_t* handle, int init){
    *handle = new _sem(init);
    return (*handle)->id;
}

int _sem::semClose(sem_t handle){
    if(!handle)return -1;
    while(!handle->blocked->empty())handle->unblock();
    delete handle;
    return 0;
}

void _sem::block(){
    blocked->add_last(_thread::running);
    _thread::running->setBlocked(true);
}

_thread* _sem::unblock(){
    _thread* t = blocked->remove_first();
    t->setBlocked(false);
    Scheduler::put(t);
    return t;
}

int _sem::semWait(sem_t handle){
    if(!handle)return -1;
    if(--(handle->init) < 0)handle->block();
    thread_dispatch();
    return 0;
}

int _sem::semSignal(sem_t handle){
    if(!handle)return -1;
    if(++handle->init <= 0){
        _thread* nit = handle->unblock();
        nit->setSleep(false); nit->setBlocked(false);
        _sleep::izbaciSleep(nit);
        nit->rtv = 0;
    }
    thread_dispatch();
    return 0;
}

int _sem::semTrysignal(sem_t handle){
    if(!handle)return -1;
    if(++handle->init <= 0)handle->unblock();
    return 0;
}

int _sem::semTimedwait(sem_t handle, time_t t){
    if(!handle)return -1;
    if(t == 0)return -2;

    if(--(handle->init) < 0){
        _thread::running->semaphore = handle;
        handle->block();
        _sleep::insert(_thread::running, t);
        thread_dispatch();
    }
    else{
        _thread::running->rtv = 0;
    }

    return _thread::running->rtv;
}

int _sem::semTrywait(sem_t handle){
    if(!handle)return -1;
    if(--(handle->init) < 0){
        handle->block();
        thread_dispatch();
    }
    return 0;
}
