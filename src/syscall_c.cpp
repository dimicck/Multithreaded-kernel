#include "../h/syscall_c.hpp"

enum codes {
    MEM_ALLOC = 0x01,
    MEM_FREE  = 0x02,
    THREAD_CREATE = 0x11,
    THREAD_EXIT = 0x12,
    THREAD_DISPATCH = 0x13,
    THREAD_CREATE_ONLY = 0x14,
    THREAD_START = 0x15,
    SEM_OPEN = 0x21,
    SEM_CLOSE = 0x22,
    SEM_WAIT = 0x23,
    SEM_SIGNAL = 0x24,
    GETC = 0x41,
    PUTC = 0x42
};

extern "C" void interruptRoutine() {

}
