#include "../h/BoundedBuffer.hpp"

BoundedBuffer::BoundedBuffer() {
    head = tail = 0;
    Sem::open(&space_available, bufferSize);
    Sem::open(&item_available, 0);
}

BoundedBuffer::~BoundedBuffer() {
    Sem::s_close(space_available);
    Sem::s_close(item_available);
}

void BoundedBuffer::put(char c) {
    Sem::wait(space_available);
    buffer[tail++] = c;
    tail %= bufferSize;
    Sem::signal(item_available);
}

char BoundedBuffer::get() {
    Sem::wait(item_available);
    char  c = buffer[head++];
    head %= bufferSize;
    Sem::signal(space_available);
    return c;
}

void *BoundedBuffer::operator new(size_t size) {
    return MemoryAllocator::mem_alloc( (size + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE );
}

void BoundedBuffer::operator delete(void *addr) {
    MemoryAllocator::mem_free(addr);
}
