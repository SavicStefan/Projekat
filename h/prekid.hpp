#ifndef prekid
#define prekid

#include "../lib/hw.h"

extern "C" void zaPrekide();

class Prekid{
    static void interruptHandler();
public:
    static bool super;
    static void zaPrekide();
    static void pushRegisters();
    static void popRegisters();
    static void popSppSpie();
};

#endif