#include "../h/memoryAllocator.hpp"

#include "../test/printing.hpp"

BlockHeader* MemoryAllocator::freeMemHead = nullptr;
BlockHeader* MemoryAllocator::usedMemHead = nullptr;

void MemoryAllocator::mem_init(){
	freeMemHead = (BlockHeader*)((char*)HEAP_START_ADDR);
	freeMemHead->size = ((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(BlockHeader));
	freeMemHead->prev = nullptr;
	freeMemHead->next = nullptr;
	usedMemHead = nullptr;
}

void* MemoryAllocator::mem_alloc(size_t size){
//    printString("alloc\n");
    // 90 -> 128

	size_t sz = size;
	if(size % MEM_BLOCK_SIZE)sz += MEM_BLOCK_SIZE - (size % MEM_BLOCK_SIZE);

	// MEM_BLOCK_SIZE deli sz

	BlockHeader *blk = freeMemHead;
	for(; blk != nullptr; blk = blk->next){
		if(blk->size >= sz)break;
	}

	// ovo znaci da nisam nasao prostor
	if(blk == nullptr){
		return nullptr;
	}

	size_t ostSz = blk->size - sz; // ovoliko memorije mi je ostalo
	if(ostSz > sizeof(BlockHeader)){
		// mora bar biti vece od cvora liste kako bi ga stavio uopste

		blk->size = sz;

		BlockHeader* nwBlk = (BlockHeader*)((char*)blk + sizeof(BlockHeader) + sz);

		if(blk->prev)blk->prev->next = nwBlk;
		else freeMemHead = nwBlk;

		nwBlk->prev = blk->prev;
		nwBlk->next = blk->next;

        if(nwBlk->next)nwBlk->next->prev = nwBlk;
		nwBlk->size = ostSz - sizeof(BlockHeader);

	}
	else{
		// ne ostaje nista

		if(blk->prev)blk->prev->next = blk->next;
		else freeMemHead = blk->next;

        if(blk->next)blk->next->prev = blk->prev;

	}

	blk->prev = nullptr;
	blk->next = nullptr;

	// TREBA STAVITI blk U usedMemHead
	if(usedMemHead == nullptr){
		usedMemHead = blk;
        usedMemHead->next = nullptr;
        usedMemHead->prev = nullptr;
 	}
 	else if((char*)blk < (char*)usedMemHead){
         usedMemHead->prev = blk;
         blk->prev = nullptr;
         blk->next = usedMemHead;
         usedMemHead = blk;
     }else {
         BlockHeader* a = usedMemHead;
         for(;a->next && (char*)a->next < (char*)blk; a = a->next);
            //a, blk, a->next
         blk->next = a->next;
         blk->prev = a;
         if(blk->next)blk->next->prev = blk;
         a->next = blk;

     }

	return (char*)blk + sizeof(BlockHeader);

}

// znaci ja vec znam da je ptr zadrzano u listi used
int MemoryAllocator::mem_free(void* ptr){
	if(usedMemHead == nullptr)return -1;

    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR)return -2;
//    printString("free\n");

	BlockHeader* blk = (BlockHeader*)((char*)ptr - sizeof(BlockHeader));
    if(blk == nullptr || blk < usedMemHead)return -3;


	if(blk == usedMemHead){
		usedMemHead = usedMemHead->next;
		if(usedMemHead)usedMemHead->prev = nullptr;
	}
	else{
		if(blk->prev)blk->prev->next = blk->next;
		if(blk->next)blk->next->prev = blk->prev;
	}

	blk->prev = nullptr;
	blk->next = nullptr;

	// TREBA STAVITI blk u freeMemHead
	if(freeMemHead == nullptr){
		freeMemHead = blk;
        freeMemHead->prev = nullptr;
        freeMemHead->next = nullptr;
	}
	else if((char*)blk < (char*)freeMemHead){
        freeMemHead->prev = blk;
		blk->next = freeMemHead;
		freeMemHead = blk;
		tryToJoin(freeMemHead);
	}
	else{

		BlockHeader* p = freeMemHead;
		for(;p->next != nullptr && (char*)p->next < (char*)blk; p = p->next);
        // p, blk, p->next
		blk->next = p->next;
		blk->prev = p;
		if(blk->next)blk->next->prev = blk;
        p->next = blk;

		tryToJoin(blk);
		tryToJoin(p);

	}

	return 0;

}

void MemoryAllocator::tryToJoin(BlockHeader* p){
	if(!p)return;
	if(p->next && (char*)p + sizeof(BlockHeader) + p->size == (char*)(p->next)){
		p->size += p->next->size + sizeof(BlockHeader);
		p->next = p->next->next;
		if(p->next)p->next->prev = p;
	}
}