
#include "../h/semaphore.hpp"

Sem* Sem::first = nullptr;
Sem* Sem::last  = nullptr;

int Sem::wait(sem_t handle) {
    if (!handle) return SEM_CLOSED;
    if (--handle->value < 0) {
        handle->block();
        if (!handle) return SEMDEAD;
        // sem deallocated while thread waiting
        // returns here after releasing all threads
    }
    return 0;
}

int Sem::signal(sem_t handle) {
    if (!handle) return SEM_CLOSED;
    if (++handle->value<= 0) handle->deblock();
    return 0;
}

int Sem::trywait(sem_t handle) { /// ??????????????????

    if (!handle) return SEM_CLOSED; // error code
    if (handle->value > 0) return sem_wait(handle);
    return 0; // no success
}

void Sem::block() {

    TCB* oldRunning = TCB::running;
    oldRunning -> current_state = TCB::BLOCKED;

    blocked.add(oldRunning);

    TCB::running = Scheduler::get();
    TCB::yield(oldRunning, TCB::running);
}

void Sem::deblock() {

    // needs modification for timedWait

    TCB* tcb = blocked.get();

    if (!tcb) return; // should not happen
    if (tcb -> time_on_sem) {
        // 0 if not timed wait
        tcb -> time_on_sem = 0;
        timedBlock--;
    }
    tcb->current_state = TCB::RUNNABLE;
    Scheduler::put(tcb);

}

int Sem::timedWait(sem_t handle, time_t time) {

    // maksimalno timeout jedinica tajmera
    // uspeh => 0
    // semafor dealociran tokom cekanja => -1 (SEMDEAD)
    // isteklo je vreme => -2 (TIMEOUT)

    if (!handle) return SEM_CLOSED;

    if (--(handle->value) < 0) {

        TCB::running->time_on_sem = time;
        handle->timedBlock++;

        handle->block();

        if (!handle) return SEMDEAD; // sem deallocated while waiting

        handle->timedBlock--;
        if (!TCB::running->time_on_sem) return TIMEOUT;
        else TCB::running->time_on_sem = 0;

    }

    return 0;
}

int Sem::open(sem_t *handle, unsigned int init) { // ne ovde
    auto newSem = new Sem((int)init);
    if (!newSem) return MEMORY_ERR;
    *handle = newSem;

    semAdd(*handle); // to sems list

    return 0;
}

int Sem::s_close(sem_t handle) {

    if (!handle) return SEM_CLOSED;

    semRemove(handle); // remove from semaphores list

    while (handle->blocked.peek()) {
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

int Sem::getValue() const {
    return value;
}

void Sem::semAdd(Sem* toAdd) {

    if (!first) first = last = toAdd;
    else last = last -> next = toAdd;

}

void Sem::semRemove(Sem* toDelete) {

    Sem* prev = nullptr, *s = nullptr;

    for (s = first; s; s = s->next) {
        if (s == toDelete) {
            if (prev) prev->next = s->next;
            else first = last = s;
            s->next = nullptr;
            return;
        }
        prev = s;
    }
}

