
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

        // no more work to do, move on
        thread_dispatch();
    }
}

void testTimedWait(void* args) {

}

sem_t mySem;

void semWaiter(void* ) {
    sem_wait(mySem);
}


thread_t mythreads[10];

void runningForever(void* args) {

    //char * arg = (char*)args;

    while (!mythreads[2] -> isFinished()) {
        putc('a');
    }
}


void timedWaiter(void *) {
    int result = sem_timedwait(mySem, 1);
    if (result == Sem::TIMEOUT) putc('t');
    thread_exit();
}

thread_t mainThread;
thread_t consoleThread;
thread_t userMainThread;


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

    thread_create(&mainThread, nullptr, nullptr); // main

    TCB::running = mainThread;

    RISCV::set_status(RISCV::SIE); // interrupts enabled

    thread_create(&consoleThread, handleNewChars, nullptr);

//    thread_create(&mythreads[0], runningForever, (void *)('b'));
//    thread_create(&mythreads[1], runningForever, (void *)('a'));
//    thread_create(&mythreads[3], runningForever, (void *)('b'));
//    thread_create(&mythreads[4], semWaiter, (void *)('a'));
//    thread_create(&mythreads[5], semWaiter, (void *)('b'));
//
//    thread_create(&mythreads[2], timedWaiter, nullptr);

    thread_create(&userMainThread, userWrapper, nullptr);

//    sem_open(&mySem, 1); // mutex

     while (true) thread_dispatch();
    return 0;
}
