
#include "../h/Scheduler.hpp"

TCB* Scheduler::first = nullptr;
TCB* Scheduler::last  = nullptr;
TCB* Scheduler::first_sleepy = nullptr;
TCB* Scheduler::last_sleepy  = nullptr;

TCB *Scheduler::get() {

    if (!first) return nullptr; // idle thread

    TCB* tcb = first;

    first = first -> next_ready;
    if (!first) last = nullptr;
    tcb -> next_ready = nullptr;

    return tcb;

}

void Scheduler::put(TCB *newTCB) {

    if (!first) first = last = newTCB;
    else last = last -> next_ready = newTCB;

}

TCB* Scheduler::peek() {
    if (!first) return nullptr;
    return first;
}

bool Scheduler::empty() {
    return first != nullptr;
}

int Scheduler::put_to_sleep(TCB *tcb, time_t time) {

    // napravi static put (*head, *last)

    // RAZMISLI O THREAD::PUT_TO_SLEEP !!!

    if (!first_sleepy) {
        first_sleepy = last_sleepy = tcb;
        tcb -> sleeping_time = time;
        s_yield();
        return 0;
    }

    TCB* prev = nullptr, *curr = first_sleepy; // insert between
    time_t time_sum = 0;

    while (curr) {

        if (time_sum + curr->sleeping_time > time) {

            // time_sum = previous thread sleep time
            // insert new sleeping thread
            // new time  <= time - time_sum
            // new next  <= curr
            // prev next <= new

            if (prev) prev -> next_sleepy = tcb;
            else first_sleepy = tcb;

            tcb -> next_sleepy = curr;
            tcb -> sleeping_time = time - time_sum;

            // change next time (curr)

            curr -> sleeping_time -= tcb -> sleeping_time;

            s_yield();

            return 0;
        }

        time_sum += curr -> sleeping_time;
        prev = curr;
        curr = curr -> next_sleepy;
    }

    // insert at the end, has previous
    tcb -> sleeping_time = time - time_sum;
    prev -> next_sleepy = tcb;

    s_yield();
    return 0;


}

void *Scheduler::operator new(size_t size) {
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return MemoryAllocator::mem_alloc(blocks);
}

void Scheduler::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}

void Scheduler::s_yield() {

    TCB* oldRunning = TCB::running;
    oldRunning -> current_state = TCB::SLEEPING;

    TCB::running = get(); // Scheduler::get
    TCB::yield(oldRunning, TCB::running);

}


