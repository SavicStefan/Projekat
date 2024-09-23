#ifndef memoryAllocator
#define memoryAllocator

#include "../lib/hw.h"

struct BlockHeader{
    BlockHeader* prev;
    BlockHeader* next;
    size_t size;
};

class MemoryAllocator{
public:

    static BlockHeader* freeMemHead;
    static BlockHeader* usedMemHead;

    static void mem_init();
    static void* mem_alloc(size_t size);
    static int mem_free(void* ptr);
    static void tryToJoin(BlockHeader* p);

};

#endif