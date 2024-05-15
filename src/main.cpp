
#include "../h/Memoryallocator.hpp"
#include "../h/Scheduler.hpp"
#include "../h/Console.hpp"
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


//sem_t mySem = nullptr;

void workerA(void*) {
    for (int i = 0; i < 4; ++i) {
        printInteger(i);
        __putc('(');
        __putc('A');
        __putc(')');
        for (int j = 0; j < 10000; ++j) {
            for (int k = 0; k < 30000; ++k) {}
            thread_dispatch();
        }
    }
}
void workerB(void*) {
    for (int i = 0; i < 16; ++i) {
        printInteger(i);
        __putc('(');
        __putc('B');
        __putc(')');
        for (int j = 0; j < 10000; ++j) {
            for (int k = 0; k < 30000; ++k) {}
            thread_dispatch();
        }
    }
}

void testConsole(void *args) {
    putc('a');
}

void handleNewChars(void * args) {

    while (true) {
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
            // console controller is ready for new char
            char c = myConsole::kgetc();
            *(char *) CONSOLE_TX_DATA = c;
            // pop from output buffer and wr to TX DATA
        }
    }
}

thread_t threads[5];

void userMain();

void userWrapper(void* args) {
    userMain();
}

int main() {

    RISCV::wr_stvec((uint64)&RISCV::supervisor_trap);
    MemoryAllocator::getAllocator();
    Scheduler::init_scheduler();
//    myConsole::init();

//    testMemoryAllocator();
//    testCMemory();

    thread_create(&threads[0], nullptr, nullptr); // main
    TCB::running = threads[0];

//    thread_create(&threads[1], handleNewChars, nullptr);
    RISCV::set_status(RISCV::SIE); // interrupts enabled

    //sem_open(&mySem, 1); // mutex

    thread_create(&threads[1], workerA, nullptr);
//    thread_create(&threads[2], workerB, nullptr);
//    while (!threads[1]->isFinished() || !threads[2]->isFinished()) thread_dispatch();

//    thread_t userMainThread;
//    thread_create(&userMainThread, userWrapper, nullptr);
//    while (!userMainThread->isFinished()) {thread_dispatch();}

//    char c = getc();
//    putc(c);

    while (true) thread_dispatch();

    return 0;
}
