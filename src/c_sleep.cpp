#include "../h/c_sleep.hpp"

_sleep::node* _sleep::head = nullptr;
_sleep::node* _sleep::tail = nullptr;

#include "../test/printing.hpp"
#include "../h/scheduler.hpp"

void _sleep::insert(_thread* nit, time_t time){
    if(time == 0){
        nit->setSleep(false);
        return;
    }

    if(head == nullptr){
        head = tail = new node(nit, time, nullptr);
    }
    else if(time < head->time){
        head = new node(nit, time, head);
        head->next->time -= time;
    }
    else{

        bool ok = false;
        for(node* p = head; p; p = p->next){
            time -= p->time;
            if(p->next && time < p->next->time){
                p->next = new node(nit, time, p->next);
                p->next->next->time -= time;
                ok = true;
                break;
            }
        }

        if(ok == false){
            tail->next = new node(nit, time, nullptr);
            tail = tail->next;
        }

    }

//    printString("lista\n");
//    for(node* p = head; p != nullptr; p = p->next){
//        printInt(p->info->id); printString(" "); printInt(p->time); printString("\n");
//    }
//    printString("kraj\n");

}

bool _sleep::empty(){
    return head == nullptr;
}

_thread* _sleep::remove_first(){
    if(!head)return 0;

    node* p = head;
    head = head->next;
    if(!head)tail = 0;

    _thread* ans = p->info;
    delete p;
    return ans;
}

int _sleep::timeSleep(time_t time){
    _thread::running->setSleep(true);
    insert(_thread::running, time);
    _thread::threadDispatch();
    return 0;
}

void _sleep::update(){
    if(head == nullptr)return;
//    printString("update");
//    printInt(head->time);
//    printString("\n");
    head->time--;
}

time_t _sleep::getFirstTime(){
    if(head == nullptr)return -1;
    return head->time;
}

int _sleep::izbaciSleep(_thread* X) {
    node* prev = nullptr;
    for(node* p = head; p; p = p->next){
        if(p->info == X){
            if(!prev){
                if(head->next)head->next->time += head->time;
                head = head->next;
//                delete p;
                return 1;
            }

            prev->next = p->next;
            if(!p->next)tail = prev;
            else p->next->time += p->time;

//            delete p;
            return 1;
        }
        prev = p;
    }
    return 0;
}