
#include "../h/semaphore.hpp"

int Sem::wait() {
    if (isClosed) return SEM_CLOSED;
    if (--value < 0) {
        block();
    }
    return 0;
}

int Sem::signal() {
    if (isClosed) return SEM_CLOSED;
    if (++value <= 0) deblock();
    return 0;
}

int Sem::trywait() { /// ??????????????????

    if (isClosed) return SEM_CLOSED; // error code
    if (value <= 0) return NEG_VALUE; // no success
    --value;
    if (value == 0) return 0; // sem locked ??
    return 1;                 // sem not locked
}

void Sem::block() {

    TCB* oldRunning = TCB::running;

    if (last) last = last->next_blocked = oldRunning; // with tcb pointers
    else first = last = oldRunning;

    oldRunning -> current_state = TCB::BLOCKED;

    TCB::running = Scheduler::get();
    TCB::yield(oldRunning, TCB::running);
}

void Sem::deblock() {

    // needs modification for timedWait

    if (!first) return;          // blocked empty
    TCB* t = first;
    first = first -> next_blocked;
    if (!first) last = nullptr;

    t -> next_blocked = nullptr;
    t -> current_state = TCB::RUNNABLE;
    Scheduler::put(t);
}

int Sem::timedWait(time_t) {
    // after timer implementation
    return 0;
}

int Sem::open(sem_t *handle, unsigned int init) { // ne ovde
    auto newSem = (sem_t) MemoryAllocator::mem_alloc(sizeof(Sem));
    if (!newSem) return MEMORY_ERR;
    newSem -> value = init;
    *handle = newSem;
    return 0;
}

int Sem::s_close(sem_t handle) {

    if (!handle) return SEM_CLOSED; // da li je dealociran ?

    for (TCB* b = handle->first; b != nullptr; b = b -> next_blocked) {
        b -> current_state = TCB::RUNNABLE;
        Scheduler::put(b);
    } // release all blocked threads

    delete handle; //

    return 0;
}

void Sem::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}

void *Sem::operator new(size_t size) {
    return MemoryAllocator::mem_alloc((mem_h_size + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
}
