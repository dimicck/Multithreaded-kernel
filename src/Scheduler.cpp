
#include "../h/Scheduler.hpp"

Scheduler::Elem* Scheduler::head = nullptr;
Scheduler::Elem* Scheduler::tail = nullptr;

TCB *Scheduler::get() {
    if (!head) return nullptr;
    Elem* removed = head;
    head = head -> next;
    if (!head) tail = nullptr;
    TCB *ret = removed -> data;
    delete removed;
    return ret;
}

void Scheduler::put(TCB *newTCB) {

    Elem* newElem = new Elem(newTCB, nullptr);
    if (tail) tail = tail -> next = newElem;
    else head = tail = newElem;
}

TCB* Scheduler::peek() {
    if (!head) return nullptr;
    return head -> data;}

bool Scheduler::empty() {
    return peek() == nullptr;
}

void Scheduler::put_to_sleep(TCB *, time_t) {
    // ...
}

void *Scheduler::operator new(size_t size) {
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return MemoryAllocator::mem_alloc(blocks);
}

void Scheduler::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}


