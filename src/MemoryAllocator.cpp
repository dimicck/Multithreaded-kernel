
#include "../h/Memoryallocator.hpp"
#include "../lib/console.h"

MemoryAllocator* MemoryAllocator::allocator = nullptr;
MemoryAllocator::MemoryBlock* MemoryAllocator::free_mem_head = nullptr;
MemoryAllocator::MemoryBlock* MemoryAllocator::used_mem_head = nullptr;

MemoryAllocator* MemoryAllocator::getAllocator() {

    if (allocator == 0) {
        free_mem_head = (MemoryBlock*)HEAP_START_ADDR;
        free_mem_head->next = nullptr;
        free_mem_head->prev = nullptr;
        free_mem_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc(sizeof(MemoryAllocator));
    }
    return allocator;
}

void* MemoryAllocator::mem_alloc(size_t size) {

    //size je broj blokova koje zelimo zauzeti
    if (size <= 0) return nullptr;

    MemoryBlock* curr = nullptr;
    size_t byte_size = size * MEM_BLOCK_SIZE;

    for (curr = free_mem_head; curr; curr = curr -> next) {

        if (curr->size >= byte_size) {

            if (curr->size - byte_size < sizeof(MemoryBlock)) {
                if (curr->next) curr->next->prev = curr->prev;
                if (curr->prev) curr->prev->next = curr->next;
                else free_mem_head = curr->next;
                // first free seg
                continue;
            } else {
                // allocate
                auto *remaining = (MemoryBlock *) ((char *) curr + byte_size);
                remaining->next = curr->next;
                remaining->prev = curr->prev;
                remaining->size = curr->size - byte_size;
                // update pointers of next
                if (curr->next) curr->next->prev = remaining;
                if (curr->prev) curr->prev->next = remaining;
                else free_mem_head = remaining;
            }

            // update used list
            MemoryBlock* prev;
            if (curr < used_mem_head || used_mem_head == 0) prev = 0;
            else for (prev = used_mem_head; prev->next != 0; prev = prev->next);

            curr->size = byte_size;
            curr->prev = prev;
            if (prev) {
                curr->next = prev->next;
                prev->next = curr;
            }
            else used_mem_head = curr;
            if (curr->next) curr->next->prev = curr;
            return (void*)((char*)curr + sizeof(MemoryBlock));

        }
    }

    // free memory not found :(
    return nullptr;
}

int MemoryAllocator::mem_free(const void* addr) {
    if (!addr || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error

    auto* block = (MemoryBlock*)((char*)addr - sizeof(MemoryBlock));
    MemoryBlock* tmp = used_mem_head;

    for (; tmp && block > tmp; tmp = tmp->next);
    if (block != tmp || !tmp) return -1;

    // used mem
    if (tmp->prev) tmp->prev->next = tmp->next;
    else used_mem_head = tmp->next;
    if (tmp->next) tmp->next->prev = tmp->prev;

    // free mem
    if (!free_mem_head || (char*)block < (char*)free_mem_head) tmp = nullptr;
    else for (tmp = free_mem_head; tmp->next != 0 && (char*)block > (char*)(tmp->next); tmp = tmp->next);

    // tmp == previous

    if (tmp == nullptr) {
        block -> prev = tmp;
        if (free_mem_head) {
            free_mem_head->prev = block;
            block->next = free_mem_head;
            tryToJoin(block);
        }
        else block -> next = nullptr;
        free_mem_head = block;
        tryToJoin(free_mem_head);

    } else {
        block->next = tmp->next;
        block->prev = tmp;
        tmp->next = block;
        if (block->next) block->next->prev = block;
        tryToJoin(block);
        tryToJoin(tmp);
    }
    return 0;
}

// try to join with next free segment

int MemoryAllocator::tryToJoin(MemoryAllocator::MemoryBlock *curr) {
    if (!curr) return 0;
    if (curr->next && (char*)curr + curr->size == (char*)curr->next) {
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
        return 1; // success status
    }
    return 0;
}

void MemoryAllocator::print() {

    for (MemoryBlock* b = free_mem_head; b != nullptr; b = b->next) {
        __putc('f');
        __putc('\n');
    }

    if (!used_mem_head) __putc('x');

    for (MemoryBlock* b = used_mem_head; b != nullptr; b = b->next) {
        __putc('u');
        __putc('\n');
    }

    __putc('\n');
}















