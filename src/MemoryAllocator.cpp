
#include "../h/MemoryAllocator.hpp"
MemoryAllocator* allocator = nullptr;

MemoryAllocator* MemoryAllocator::getAllocator() {

    if (allocator == 0) {
        used_mem_head = 0;
        free_mem_head = (MemoryBlock*)HEAP_START_ADDR;
        free_mem_head->next = nullptr;
        free_mem_head->prev = nullptr;
        free_mem_head->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
        allocator = (MemoryAllocator*)MemoryAllocator::mem_alloc((sizeof(MemoryAllocator)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    }
    return allocator;
}

void* MemoryAllocator::mem_alloc(size_t size) {
    //size je broj blokova koje zelimo zauzeti
    if (size <= 0) return nullptr;

    MemoryBlock* curr = 0;
    size_t byte_size = size*MEM_BLOCK_SIZE;
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

            curr->size = size*MEM_BLOCK_SIZE;
            curr->prev = prev;
            if (prev) {
                curr->next = prev->next;
                prev->next = curr;
            }
            else used_mem_head = curr; // da li je kruzna lista ?
            if (curr->next) curr->next->prev = curr;
            return (void*)((char*)curr + sizeof(MemoryBlock));
            // pokazivac na memoriju za alociranje: bez zaglavlja
        }
    }
    // nije pronadjen odgovarajuc blok memorije
    return 0;
}