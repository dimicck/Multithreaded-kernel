#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/Memoryallocator.hpp"
#include "../h/thread.hpp"

// not inline ( ra reg )
// first time running a thread, sepc inside of wrapper

void RISCV::popSppSpie() {
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void RISCV::supervisor_trap() {
    uint64 op, a1, a2, a3, a4;
    __asm__ volatile("mv %0, a0" : "=r"(op));
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    __asm__ volatile("mv %0, a3" : "=r"(a3));
    __asm__ volatile("mv %0, a4" : "=r"(a4));

    uint64 scause = rd_scause();

    if (scause == SOFTWARE) {
        // software interrupt - timer
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

//        TCB::time_slice_count = 0; // new running thread
//        TCB::dispatch();

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
                break;
            case THREAD_DISPATCH:
                TCB::dispatch();
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

        wr_sepc(sepc);
        wr_sstatus(sstatus);

    }
}

