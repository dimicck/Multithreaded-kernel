#include "../lib/hw.h"
#include "../h/syscall_c.hpp"

extern "C" void handleTrap() {
    uint64 op, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(op));
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    __asm__ volatile("mv %0, a4" : "=r"(a4));

    // scause provera

    switch (op) {
        case MEM_ALLOC:
            // ...
            break;
        case MEM_FREE:
            // ...
            break;
        case THREAD_CREATE:
            // ...
            break;
        case THREAD_EXIT:
            break;
        case THREAD_DISPATCH:
            // ...
            break;
        case THREAD_CREATE_ONLY:
            // ...
            break;
        case THREAD_START:
            // ...
            break;
        case SEM_OPEN:
            // ...
            break;
        case SEM_CLOSE:
            // ...
            break;
        case SEM_WAIT:
            // ...
            break;
        case SEM_SIGNAL:
            // ...
            break;
        case GETC:
            // ...
            break;
        case PUTC:
            // ...
            break;
    }
}