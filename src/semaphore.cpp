
#include "../h/semaphore.hpp"

int Sem::wait(sem_t handle) {
    if (!handle) return SEM_CLOSED;
    if (--(handle->value) < 0) {
        handle->block();
    }
    return 0;
}

int Sem::signal(sem_t handle) {
    if (!handle) return SEM_CLOSED;
    if (++(handle->value) <= 0) handle->deblock();
    return 0;
}

int Sem::trywait(sem_t handle) { /// ??????????????????

    if (!handle) return SEM_CLOSED; // error code
    if (handle->value <= 0) return 1; // no success
    --(handle->value);
    return 0;                       // sem not locked
}

void Sem::block() {

    TCB* oldRunning = TCB::running;

    blocked.add(oldRunning);

    oldRunning -> current_state = TCB::BLOCKED;

    TCB::running = Scheduler::get();
    TCB::yield(oldRunning, TCB::running);
}

void Sem::deblock() {

    // needs modification for timedWait

    TCB* tcb = blocked.get();
    if (!tcb) return; // should not happen
    tcb->current_state = TCB::RUNNABLE;
    Scheduler::put(tcb);

}

int Sem::timedWait(sem_t, time_t) {
    // after timer implementation
    return 0;
}

int Sem::open(sem_t *handle, unsigned int init) { // ne ovde
    auto newSem = (sem_t) MemoryAllocator::mem_alloc( (sizeof(Sem) + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    if (!newSem) return MEMORY_ERR;
    newSem -> value = (int)init;
    *handle = newSem;
    return 0;
}

int Sem::s_close(sem_t handle) {

    if (!handle) return SEM_CLOSED;

    while (handle->blocked.peek()) {
        // return value of wait ????
        handle->deblock();
    }

    delete handle;
    return 0;
}

void Sem::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}

void *Sem::operator new(size_t size) {
    return MemoryAllocator::mem_alloc((mem_h_size + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
}
