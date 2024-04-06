//
// Created by os on 4/6/24.
//

#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP
#include "../lib/hw.h"

class MemoryAllocator {
private:
    MemoryAllocator();
    MemoryAllocator(MemoryAllocator&) = delete;
    MemoryAllocator& operator==(MemoryAllocator&) = delete;

    struct MemoryBlock {
        MemoryBlock* next;
        MemoryBlock* prev;
        uint64 size;
    };

    static MemoryBlock* free_mem_head;
    static MemoryBlock* used_mem_head;

public:

    static MemoryAllocator* allocator;
    static MemoryAllocator* getAllocator();

    static void* mem_alloc(size_t);
    static int mem_free(const void*);

};



#endif //PROJECT_BASE_MEMORYALLOCATOR_HPP
