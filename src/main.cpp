
#include "../h/Memoryallocator.hpp"
#include "../h/Scheduler.hpp"
#include "../h/Console.hpp"

thread_t mainThread;
thread_t consoleThread;
thread_t userMainThread;

void handleNewChars(void * args) {

    while (true) {
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
            // console controller is ready for new char
            char c = myConsole::output_getc();
//            if (c == '\r') continue;
            *(char *) CONSOLE_TX_DATA = c;
            // pop from output buffer and wr to TX DATA
        }

        // no more work to do, move on
        thread_dispatch();
    }
}

extern void userMain();

void userWrapper(void*) {
    userMain();
}

int main() {

    RISCV::wr_stvec((uint64)&RISCV::supervisor_trap);

    MemoryAllocator::init_allocator();
    myConsole::init_myconsole();

    thread_create(&mainThread, nullptr, nullptr); // main

    TCB::running = mainThread;

    RISCV::set_status(RISCV::SIE); // interrupts enabled

    thread_create(&consoleThread, handleNewChars, nullptr);

    thread_create(&userMainThread, userWrapper, nullptr);

     while (!userMainThread->isFinished()) thread_dispatch();
     while (!myConsole::no_work_for_con()) thread_dispatch();

     return 0;
}
