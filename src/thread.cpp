#include "../h/thread.hpp"
#include "../h/Scheduler.hpp"

int TCB::id_count = 0;
TCB* TCB::running = nullptr;
time_t TCB::time_slice_count = 0;

typedef TCB* _thread;

TCB::TCB(routine_ptr fun, void *args, void *stack, Context c) {
    // poziva se iz _threadCreate gde je inicijalni kontekst formiran
    id = id_count++;

    // !!! Ukoliko se nit kreira nad funkcijom main, stek NE TREBA da se kreira
    // !!! prosledi se body = nullptr, dodati neophodne provere
    // !!! takva nit se NE STAVLJA u Scheduler !!!

    routine = fun;
    this->args = args;
    this->stack = stack; // stack start address (allocated)
    this->context = c;
    this->current_state = RUNNABLE;
    this->next_ready = nullptr;
    this->next_sleepy= nullptr;
    this->sleeping_time = 0;
    this->time_slice = DEFAULT_TIME_SLICE;
}

int TCB::_threadCreate(_thread *handle, routine_ptr routine, void *args, void *stack_space) {
    Context context = {

            // initial context, starts from wrapper
            // ra <= &wrapper, sp <= stack space + size (last used)

            (uint64)&wrapper,
            routine == nullptr ? 0 : (uint64)((char *)stack_space + DEFAULT_STACK_SIZE)

            // handle == null -> main function thread, no need for new stack
    };
    *handle = new TCB (routine, args, stack_space, context);
    if (routine) Scheduler::put(*handle);
    return (*handle)->id;
}

void TCB::wrapper() {

    // spp  -> status previous privilege,
    // spie -> status previous int enable

    RISCV::popSppSpie();
    running->routine(running->args);

    running->finish();
    dispatch();
    // thread exit syscall ili yield?
}

void TCB::yield(TCB* oldRunning, TCB* newRunning) {

    // ecall ????
    // free stack if finished

    RISCV::push_regs();
    contextSwitch(&oldRunning->context, &newRunning->context);
    RISCV::pop_regs();
}

void TCB::dispatch() {

    TCB *oldRunning = TCB::running;
    if ( isRunnable() ) Scheduler::put(oldRunning);
    running = Scheduler::get();
    if (running != oldRunning) yield(oldRunning, running);
}

void *TCB::operator new(size_t size) {
    // mem alloc (Memory Allocator klasa) prima broj blokova
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return MemoryAllocator::mem_alloc(blocks);
}

void TCB::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}

void TCB::start() {
    /// ...
    Scheduler::put(this);
}

bool TCB::isRunnable() {
    return running->current_state != BLOCKED &&
           running->current_state != FINISHED &&
           running->current_state != SLEEPING;
}

