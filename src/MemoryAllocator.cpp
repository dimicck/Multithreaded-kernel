
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

    MemoryBlock* curr = 0;
    size_t byte_size = ((size + sizeof(MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    for (curr = free_mem_head; curr != 0; curr = curr -> next) {

        if (curr->size >= byte_size) {

            if (curr->size - byte_size < sizeof(MemoryBlock)) {
                if (curr->next) curr->next->prev = curr->prev;
                if (curr->prev) curr->prev->next = curr->next;
                else free_mem_head = curr->next;
                // zauzima se prvi slobodni fragment
                continue;
            } else {
                // alociranje novog slobodnog segmenta za preostali prostor
                MemoryBlock *remaining = (MemoryBlock *) ((char *) curr + byte_size);
                remaining->next = curr->next;
                remaining->prev = curr->prev;
                remaining->size = curr->size - byte_size;
                // pokazivaci susednih
                if (curr->next) curr->next->prev = remaining;
                if (curr->prev) curr->prev->next = remaining;
                else free_mem_head = remaining;
            }

            // dodavanje novog zauzetog segmenta ??
            // curr pokazuje na pocetak zauzetog prostora
            // used blokovi sortirani po start addr

            MemoryBlock* prev; // nakon kog elem liste umecemo novi
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
            // pokazivac na memoriju za alociranje: bez zaglavlja
        }
    }
    // nije pronadjen odgovarajuc blok memorije
    return 0;
}

int MemoryAllocator::mem_free(const void* addr) {
    if (addr == 0 || addr > HEAP_END_ADDR || addr < HEAP_START_ADDR) return -1; // error

    MemoryBlock* block = (MemoryBlock*)((char*)addr - sizeof(MemoryBlock));
    MemoryBlock* tmp = used_mem_head;

    for (; tmp && block > tmp; tmp = tmp->next);
    if (block != tmp || tmp == 0) return -1;

    // used mem lista
    if (tmp->prev) tmp->prev->next = tmp->next;
    else used_mem_head = tmp->next;
    if (tmp->next) tmp->next->prev = tmp->prev;

    // free mem lista
    if (free_mem_head == 0 || (char*)block < (char*)free_mem_head) tmp = nullptr;
    else for (tmp = free_mem_head; tmp->next != 0 && (char*)block > (char*)(tmp->next); tmp = tmp->next);
    // tmp je pozicija iza koje se uvezuje novi slobodan blok

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
        // tmp je prethodnik

        block->next = tmp->next;
        block->prev = tmp;
        tmp->next = block;
        if (block->next) block->next->prev = block;
        tryToJoin(block);
        tryToJoin(tmp);
    }
    return 0;
}

//tryToJoin metoda pokusava spajanje sa narednim elementom
int MemoryAllocator::tryToJoin(MemoryAllocator::MemoryBlock *curr) {
    if (curr == 0) return 0;
    if (curr->next && (char*)curr + curr->size == (char*)curr->next) {
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
        return 1;
    }
    return 0;
}

void MemoryAllocator::printfree() {

    for (MemoryBlock* b = free_mem_head; b != nullptr; b = b->next) {
        __putc('f');
        __putc('\n');
    }

    if (!used_mem_head) __putc('d');

    for (MemoryBlock* b = used_mem_head; b != nullptr; b = b->next) {
        __putc('u');
        __putc('\n');
    }
}















