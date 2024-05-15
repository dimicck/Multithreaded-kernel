#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/Memoryallocator.hpp"
#include "../h/thread.hpp"
#include "../h/Console.hpp"

extern void printInteger(uint64);
extern void printString(char*);
extern void handleNewChars(void*);

// first time running a thread, sepc inside of wrapper


void RISCV::popSppSpie() {

    // not inline ( ra reg )
    // pop sstatus spp and spie bits
    if (TCB::running->routine && TCB::running->routine != handleNewChars) RISCV::mask_status(SPP);
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

        // update running time passed for running
        // if time >= running time slice, dispatch()
        // reset static time passed
        // update sleeping threads or timed wait

        clear_sip(mask_sip_sie::SS);

        if (Scheduler::hasSleeping()) {

            Scheduler::first_sleepy -> sleeping_time --;

            TCB* tcb = Scheduler::first_sleepy;
            while (tcb) {
                // remember first sleepy
                if (tcb -> sleeping_time > 0) break;

                tcb->current_state = TCB::RUNNABLE;
                Scheduler::put(tcb);
                TCB* next = tcb -> next_sleepy;
                tcb -> next_sleepy = nullptr;
                tcb = next;
            }

            Scheduler::first_sleepy = tcb;
            if (!Scheduler::first_sleepy) Scheduler::last_sleepy = nullptr;

        }

        TCB::time_slice_count ++;
        if (TCB::time_slice_count >= TCB::running->getTimeSlice())
        {
            uint64 sepc = rd_sepc();
            uint64 sstatus = rd_sstatus();

            TCB::time_slice_count = 0; // new running thread
            TCB::dispatch();

            wr_sepc(sepc);
            wr_sstatus(sstatus);

            // first time running thread -> context not saved
            // next instruction: inside of wrapper function
        }

    } else if (scause == EXTERNAL) {
        // external interrupt - console
        console_handler();
//
//        uint64 sepc = rd_sepc();
//        uint64 sstatus = rd_sstatus();
//
//        int irq = plic_claim();
//        if (irq == CONSOLE_IRQ) {
//            while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
//
//                char c = *(char *) CONSOLE_RX_DATA;
//                myConsole::kputc(c);
//                // put new char to input buffer.
//            }
//        }
//        plic_complete(irq);
//        wr_sepc(sepc);
//        wr_sstatus(sstatus);
//        clear_sip(SE);
    }
//    else if (scause == S_ECALL) {
//
//        // a1 = oldRunning
//        // a2 = newRunning
//
//        uint64 sepc = rd_sepc() + 4;
//        uint64 sstatus = rd_sstatus();
//
//        TCB::contextSwitch( &((TCB*)a1)->context, &((TCB*)a2)->context );
//
//        wr_sepc(sepc);
//        wr_sstatus(sstatus);

     else if (scause == U_ECALL || scause == S_ECALL){
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
//                TCB::time_slice_count = 0;
                TCB::dispatch();
                break;
            case SEM_OPEN:
                Sem::open((sem_t*)a1, (unsigned int)a2);
                break;
            case SEM_CLOSE:
                Sem::s_close((sem_t)a1); // a1 == handle
                break;
            case SEM_WAIT:
                Sem::wait(((sem_t)a1)); // a1 <=> handle
                break;
            case SEM_SIGNAL:
                Sem::signal((sem_t)a1); // a1 <=> handle
                break;
            case SEM_TIMEDWAIT:
                Sem::timedWait((sem_t)a1,(time_t)a2);
                break;
            case SEM_TRYWAIT:
                Sem::trywait((sem_t)a1);
                break;
            case TIME_SLEEP:
                Scheduler::put_to_sleep((thread_t)TCB::running, (time_t)a1);
                break;
            case GETC:
                myConsole::getc();
                break;
            case PUTC:
                myConsole::putc((char)a1);
                break;
        }

        wr_sepc(sepc);
        wr_sstatus(sstatus);

    } else {
        // INVALID INTERRUPT CODE
        printInteger(123456789);
    }
}

