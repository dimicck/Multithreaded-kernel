
#include "../h/Scheduler.hpp"

List<TCB> Scheduler::list;

TCB *Scheduler::get() {
    return list.removeFirst();
}

void Scheduler::put(TCB *newTCB) {
    list.add(newTCB);
}

bool Scheduler::empty() {
    return list.peek() == nullptr;
}

void *Scheduler::operator new(size_t size) {
    size_t blocks = (size + sizeof(MemoryAllocator::MemoryBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return MemoryAllocator::mem_alloc(blocks);
}

void Scheduler::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}

