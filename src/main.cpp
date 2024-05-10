
#include "../h/Memoryallocator.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.h"
#include "../lib/console.h"
#include "../h/thread.hpp"
#include "../h/riscv.hpp"
#include "../h/print.hpp"


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

sem_t mySem = nullptr;

void workerA(void * args) {
    for (int i = 0; i < 3; i++) {
        sem_wait(mySem);
        sem_signal(mySem);
        __putc('A');
        __putc('\n');
        thread_dispatch();
    }
    for (int  i = 0; i<2; i++) {
        sem_wait(mySem);
        __putc('A');
        thread_dispatch();
    }

}

void workerB(void * args) {
    for (int i = 0; i < 5; i++){
        sem_wait(mySem);
        sem_signal(mySem);
        __putc('B');
        __putc('\n');
        thread_dispatch();
    }
}

thread_t threads[3];

int main() {

    RISCV::wr_stvec((uint64)&RISCV::supervisor_trap);

    //RISCV::mask_status(RISCV::SIE);

    MemoryAllocator::getAllocator();
    Scheduler::init_scheduler();

//    testMemoryAllocator();
//    testCMemory();

    thread_create(&threads[0], nullptr, nullptr); // main

    //printInteger(r);

    TCB::running = threads[0];

    sem_open(&mySem, 1); // mutex
    //printInteger(r);
    thread_create(&threads[1], &workerA, nullptr);
    thread_create(&threads[2], &workerB, nullptr);

    while (!threads[1]->isFinished() || !threads[2]->isFinished()) thread_dispatch();
//    if (!threads[0]) __putc('n');
//    thread_create(&threads[1], workerA, nullptr);
//    thread_create(&threads[2], workerB, nullptr);
//    while (!threads[1]->isFinished() || !threads[2]->isFinished()) thread_dispatch();
    return 0;
}
