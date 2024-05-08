
#include "../h/semaphore.hpp"


int Sem::wait() {
    if (isClosed) return -1;
    if (--value < 0) block();
    // if closed ... ?
    return 0;
}

int Sem::signal() {
    if (isClosed) return -1;
    if (++value <= 0) deblock();
    return 0;
}


void Sem::block() {
    TCB* oldRunning = TCB::running;
    blocked.add(oldRunning);
    TCB::running = Scheduler::get();
    TCB::yield(oldRunning, TCB::running);
}

void Sem::deblock() {
    TCB* t = blocked.removeFirst();
    Scheduler::put(t);
}

int Sem::timedWait(time_t) {
    return 0;
}

