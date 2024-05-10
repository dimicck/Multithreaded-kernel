#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/Memoryallocator.hpp"
#include "../h/thread.hpp"

extern void printInteger(uint64);
extern void printString(char*);

// first time running a thread, sepc inside of wrapper

void RISCV::popSppSpie() {

    // not inline ( ra reg )
    // pop sstatus spp and spie bits

    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");

    // => pop spp and spie !
    // exit from supervisor mode
}

void RISCV::handle_interrupt() {
    uint64 op, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(op)); // operation code
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    __asm__ volatile("mv %0, a4" : "=r"(a4));

    uint64 scause = rd_scause();

    if (scause == SOFTWARE) {

        // software interrupt - timer
        mask_sip(SS);
        TCB::time_slice_count ++;
        if (TCB::time_slice_count >= TCB::running->getTimeSlice())
        {
            uint64 sepc = rd_sepc();
            uint64 sstatus = rd_sstatus();

            TCB::time_slice_count = 0; // new running thread
            TCB::dispatch();

            wr_sstatus(sstatus);
            wr_sepc(sepc);

            // first time running thread -> context not saved
            // next instruction: inside of wrapper function
        }
        mask_sip(mask_sip_sie::SS);

    } else if (scause == EXTERNAL) {
        // external interrupt - console
        console_handler();
        // plus INVALID INTERRUPT

    } else if (scause == U_ECALL || scause == S_ECALL){
        // environment call from user / supervisor mode

        uint64 sepc = rd_sepc() + 4;
        uint64 sstatus = rd_sstatus();

        switch (op) {
            case MEM_ALLOC:
                MemoryAllocator::mem_alloc((size_t)a1);
                break;
            case MEM_FREE:
                MemoryAllocator::mem_free((void *)a1);
                break;
            case THREAD_CREATE:
                TCB::_threadCreate((TCB**)a1, (routine_ptr)a2, (void *)a3, (void *)a4);
                break;
            case THREAD_EXIT:
                TCB::_threadExit();
                break;
            case THREAD_DISPATCH:
                TCB::dispatch();
                break;
            case SEM_OPEN:
                Sem::open((sem_t*)a1, (unsigned int)a2);
                break;
            case SEM_CLOSE:
                Sem::s_close((sem_t)a1); // a1 == handle
                break;
            case SEM_WAIT:
                ((sem_t)a1)->wait(); // a1 <=> handle
                break;
            case SEM_SIGNAL:
                ((sem_t)a1)->signal(); // a1 <=> handle
                break;
            case SEM_TIMEDWAIT:
                ((sem_t)a1)->timedWait((time_t)a2);
                break;
            case SEM_TRYWAIT:
                ((sem_t)a1)->trywait();
                break;
            case TIME_SLEEP:
                // ...
                break;
            case GETC:
                // ...
                break;
            case PUTC:
                // ...
                break;
        }

        wr_sepc(sepc);
        wr_sstatus(sstatus);

    } else {
        // INVALID INTERRUPT CODE
    }
}

