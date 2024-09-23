#include "../h/scheduler.hpp"

List<_thread> Scheduler::ready;

_thread* Scheduler::get(){
    return ready.remove_first();
}

void Scheduler::put(_thread* t){
    ready.add_last(t);
}

void Scheduler::put_first(_thread* t){
    ready.add_first(t);
}

#include "../test/printing.hpp"
void Scheduler::print(){
    ready.setCur();
    printString("---------------------\n");

    while(1){
        _thread* t = ready.getCur();
        if(!t)break;
        printString("id: ");
        printInt(t->id);
        printString("\n");
        if(!ready.has())break;
        ready.next();
    }

    printString("---------------------\n");
}

