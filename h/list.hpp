#ifndef list
#define list

#include "../lib/console.h"

template<typename T>
class List{

    struct node{
        T* info;
        node* next;
        node(T* info, node* next) : info(info), next(next) {}
    };

    node* head = nullptr;
    node* tail = nullptr;

public:
    List(){}
    List(const List<T> &) = delete;
    List<T> &operator = (const List<T> &) = delete;

    void add_first(T* info){
        node* nw = new node(info, head);
        head = nw;
        if(!tail)tail = head;
    }

    void add_last(T* info){
        node* nw = new node(info, 0);
        if(tail){
            tail->next = nw;
            tail = nw;
        }
        else{
            head = tail = nw;
        }
    }

    T* remove_first(){
        if(!head)return 0;

        node* p = head;
        head = head->next;
        if(!head)tail = 0;

        T* ans = p->info;
        delete p;
        return ans;
    }

    T* remove_last(){
        if(!head)return 0;

        node* prev = 0;
        for(node* cur = head; cur && cur != tail; cur = cur->next)prev = cur;

        node* p = tail;
        if(prev)prev->next = 0;
        else head = 0;
        tail = prev;

        T* ans = p->info;
        delete p;
        return ans;
    }

    T* get_first(){
        return (head ? head->info : 0);
    }

    T* get_last(){
        return (tail ? tail->info : 0);
    }

    bool empty(){
        return head == 0;
  	}

    node* cur = nullptr;
    void setCur(){
        cur = head;
    }

    T* getCur(){
        return (cur ? cur->info : nullptr);
    }

    bool has(){
        return cur->next;
    }

    void next(){
        cur = cur->next;
    }

    int izbaci(T* X){
//        __putc('b'); __putc('\n');

        node* prev = nullptr;
        for(node* p = head; p; p = p->next){
            if(p->info == X){
                if(!prev){
                    head = head->next;
//                    delete p;
                    return 1;
                }

                prev->next = p->next;
                if(!p->next)tail = prev;

//                delete p;
                return 1;
            }
            prev = p;
        }


        return 0;

    }

};

#endif