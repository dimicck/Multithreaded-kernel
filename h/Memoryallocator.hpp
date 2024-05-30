//
// Created by os on 4/7/24.
//

#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP


#include "../lib/hw.h"

class MemoryAllocator {

public:

    struct MemoryBlock {
        MemoryBlock* next;
        MemoryBlock* prev;
        size_t size;
    };

    MemoryAllocator() = default;
    MemoryAllocator(MemoryAllocator&) = delete;
    MemoryAllocator& operator==(MemoryAllocator&) = delete;

private:

    static MemoryBlock* free_mem_head;
    static MemoryBlock* used_mem_head;

    static int tryToJoin(MemoryBlock*);

public:

    static MemoryAllocator* allocator;
    static MemoryAllocator* init_allocator();

    static void* mem_alloc(size_t);
    static int mem_free( void*);

};

const size_t mem_h_size = sizeof(MemoryAllocator::MemoryBlock);

#endif
