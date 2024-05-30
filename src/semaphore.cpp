
#include "../h/semaphore.hpp"

Sem* Sem::first = nullptr;
Sem* Sem::last  = nullptr;


int Sem::open(sem_t *handle, unsigned int init) {

    *handle = new Sem((int)init);
    if (*handle == nullptr) return  -1;

    sem_add(*handle); // to Sem list

    return 0;
}

int Sem::s_close(sem_t handle) {

    if (!handle) return -1;

    sem_remove(handle); // remove from semaphores list

    while (handle->blocked.peek()) {
        handle->deblock();
    }

    delete handle;
    return 0;
}

int Sem::wait(sem_t handle) {
    if (!handle) return SEM_CLOSED;
    if (--handle->value < 0) {

        handle->block();
        if (handle == nullptr) return SEMDEAD;
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

    TCB* tcb = blocked.get();

    if (!tcb) return; // should not happen

    if (tcb->time_on_sem > 0) {
        timedBlock--;
    }

    tcb->current_state = TCB::RUNNABLE;
    Scheduler::put(tcb);

}

int Sem::timedwait(sem_t handle, time_t time) {

    // max timeout timer periods
    // success =>  return 0
    // sem deallocated while waiting => -1 (SEMDEAD)
    // time expired => return -2 (TIMEOUT)

    if (!handle) return SEM_CLOSED;

    if (--(handle->value) < 0) {

        TCB::running->time_on_sem = time;
        handle->timedBlock++;

        handle->block();

        // return address after deblocking

        if (!handle) return SEMDEAD;

        // time on sem < 0 if timeout
        if (!TCB::running->time_on_sem) return TIMEOUT;
        else TCB::running->time_on_sem = 0;
    }

    return 0;
}

void Sem::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}

void *Sem::operator new(size_t size) {
    return MemoryAllocator::mem_alloc((mem_h_size + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
}

int Sem::get_value() const {return value;}

void Sem::sem_add(Sem* toAdd) {

    if (!first) first = last = toAdd;
    else last = last -> next = toAdd;

}

void Sem::sem_remove(Sem* toDelete) {

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

