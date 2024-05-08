
#include "../h/Memoryallocator.hpp"
#include "../h/syscall_c.h"
#include "../lib/console.h"
#include "../h/thread.hpp"
#include "../h/riscv.hpp"


void testMemoryAllocator() {

    void *addr = MemoryAllocator::mem_alloc(1);
    MemoryAllocator::print();
    int ret1 = MemoryAllocator::mem_free(addr);
    MemoryAllocator::print();

    int ret2 = MemoryAllocator::mem_free(addr);
    MemoryAllocator::print();

    if (ret1 == 0) __putc('G');
    if (ret2 < 0) __putc('G');

}

void testCMemory() {
    MemoryAllocator::print();
    void* addr = mem_alloc(50);
    MemoryAllocator::print();
    mem_free(addr);
    MemoryAllocator::print();
}

int main() {

    RISCV::wr_stvec((uint64)&RISCV::handle_interrupt);
    // ecall jumps to addres in stvec reg

    MemoryAllocator::getAllocator();

    // testMemoryAllocator();
    testCMemory();

    return 0;
}
