#ifndef c_console
#define c_console

#include "c_buffer.hpp"

class console{
public:
    static Buffer* input;
    static Buffer* output;

    static void init();
    static void radi();
};

#endif