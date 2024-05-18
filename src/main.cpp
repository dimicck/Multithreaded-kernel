
#include "../h/Memoryallocator.hpp"
#include "../h/Scheduler.hpp"
#include "../h/Console.hpp"
#include "../lib/console.h"
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
//
//void workerA(void*) {
//    for (int i = 0; i < 4; ++i) {
//        printInteger(i);
//        __putc('(');
//        __putc('A');
//        __putc(')');
//        for (int j = 0; j < 10000; ++j) {
//            for (int k = 0; k < 30000; ++k) {}
//            thread_dispatch();
//        }
//    }
//}

//void workerB(void*) {
//
//    while (true) {
//        char c = getc();
//        putc(c);
//        c+=1;
//    }
//}

void testConsole(void *args) {
    while (true) {
        char c1 = getc();
        char c2 = getc();
        char c3 = getc();
        putc(c1);
        putc(c2);
        putc(c3);
    }
}

void handleNewChars(void * args) {

    while (true) {
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
            // console controller is ready for new char
            char c = myConsole::output_getc();
            if (c == '\r') continue;
            *(char *) CONSOLE_TX_DATA = c;
            // pop from output buffer and wr to TX DATA
        }
    }
}

thread_t mythreads[5];

extern void userMain();

void userWrapper(void* args) {
    userMain();
}

int main() {

    RISCV::wr_stvec((uint64)&RISCV::supervisor_trap);
    MemoryAllocator::getAllocator();
    Scheduler::init_scheduler();
    myConsole::init();

//    testMemoryAllocator();
//    testCMemory();

    thread_create(&mythreads[0], nullptr, nullptr); // main
    TCB::running = mythreads[0];

    thread_create(&mythreads[3], handleNewChars, nullptr);
//    thread_create(&mythreads[1], testConsole, nullptr);
    RISCV::set_status(RISCV::SIE); // interrupts enabled

    thread_create(&mythreads[1], userWrapper, nullptr);

    while ( true ) { thread_dispatch(); }

    return 0;
}
