#include "../h/thread.hpp"
#include "../h/Scheduler.hpp"

int TCB::id_count = 0;
TCB* TCB::running = nullptr;
time_t TCB::time_slice_count = 0;

TCB::TCB(routine_ptr fun, void *args, void *stack, Context c) : context(c) {
    // poziva se iz _threadCreate gde je inicijalni kontekst formiran
    id = id_count++;

    // !!! body = nullptr => stack = nullptr + skip Scheduler::put()

    routine = fun;
    this->args = args;
    this->stack = (uint64*)stack; // stack start address (allocated)
    this->current_state = RUNNABLE;
    this->next_ready = nullptr;
    this->next_sleepy= nullptr;
    this->time_on_sem = 0;
    this->sleeping_time = 0;
    this->time_slice = DEFAULT_TIME_SLICE; // add in constructor
}

int TCB::_threadCreate(TCB** handle, routine_ptr routine, void *args, void *stack_space) {
    Context context = {

            // initial context, starts from wrapper
            // ra <= &wrapper, sp <= stack space + size (last used)

            (uint64)wrapper,
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE - 1)

            // handle == null -> main function thread, no need for new stack
    };

    *handle = new TCB (routine, args, stack_space, context);
    if (routine) Scheduler::put(*handle);
    return 0;
}

void TCB::wrapper() {

    // spp  -> status previous privilege,
    // spie -> status previous int enable

    // came from supervisor trap (s mode)
    if ( running->routine ) {
        RISCV::popSppSpie();
        running->routine(running->args);
        // in user mode IF not char-handler
    }

    ::thread_exit();
    // no return address from wrapper
}

void TCB::yield(TCB* oldRunning, TCB* newRunning) {

    // async interrupts =>
    // (1) save old context, registers
    // (2) handle cause ( RISCV::supervisor_trap )

    // (3) possible context switch -> pop regs >>> YIELD

    RISCV::push_regs();
    contextSwitch(&oldRunning->context, &newRunning->context);
    RISCV::pop_regs();
}

void TCB::dispatch() {

    TCB *oldRunning = TCB::running;
    if ( isRunnable() ) Scheduler::put(oldRunning);
    if ( isFinished() ) {
        MemoryAllocator::mem_free(TCB::running->stack);
    }

    time_slice_count = 0;
    running = Scheduler::get();

    if (oldRunning != running) yield(oldRunning, running);
}

void *TCB::operator new(size_t size) {
    // mem alloc (Memory Allocator klasa) prima broj blokova
    size_t blocks = (size + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return MemoryAllocator::mem_alloc(blocks);
}

void TCB::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}

bool TCB::isRunnable() {
    return running->current_state == RUNNABLE; }

int TCB::_threadExit() {

    if (TCB::running == nullptr) return -1; // error

    TCB::running -> finish();
    thread_dispatch();
    return 0;
}

