
#include "../h/Memoryallocator.hpp"
#include "../lib/console.h"

int main() {
    __putc('\n');
    MemoryAllocator::getAllocator();
    MemoryAllocator::mem_alloc(15);
    MemoryAllocator::printfree();
    MemoryAllocator::mem_free((void*)(1*MEM_BLOCK_SIZE+ sizeof(MemoryAllocator::MemoryBlock)+(char*)HEAP_START_ADDR));
    MemoryAllocator::printfree();
    return 0;
}
