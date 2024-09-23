#ifndef c_buffer
#define c_buffer

#include "../lib/hw.h"
#include "c_semaphore.hpp"

class Buffer{
    _sem* itemAvailable;
    static const uint64 N = 256;
    char buf[N];
    uint64 head = 0;
    uint64 tail = 0;
    uint64 count = 0;
public:
    Buffer();
    char getc();
    void putc(char c);
    uint64 getCount() { return count; }
};

#endif