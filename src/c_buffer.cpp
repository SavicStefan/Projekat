#include "../h/c_buffer.hpp"

#include "../lib/console.h"

Buffer::Buffer() : head(0), tail(0), count(0) {
    _sem::semOpen(&itemAvailable, 0);
}

char Buffer::getc(){
    _sem::semTrywait(itemAvailable);
    char c = buf[head];
    head = (head + 1) % N;
    count -= 1;
    return c;
}

void Buffer::putc(char c){
    if(count < N){
        buf[tail] = c;
        tail = (tail + 1) % N;
        count += 1;
        _sem::semTrysignal(itemAvailable);
    }
}