#include "../h/BoundedBuffer.hpp"

BoundedBuffer::BoundedBuffer() {
    head = tail = 0;
    Sem::open(&space_available, bufferSize);
    Sem::open(&item_available, 0);
    Sem::open(&mutex, 1);
}

BoundedBuffer::~BoundedBuffer() {
    Sem::s_close(space_available);
    Sem::s_close(item_available);
    Sem::s_close(mutex);
}

void BoundedBuffer::put(char c) {
    Sem::wait(space_available);
    //Sem::wait(mutex);
    buffer[tail++] = c;
    tail %= bufferSize;
    //Sem::signal(mutex);
    Sem::signal(item_available);
}

char BoundedBuffer::get() {
    Sem::wait(item_available);
    //Sem::wait(mutex);
    char  c = buffer[head++];
    head %= bufferSize;
    //Sem::signal(mutex);
    Sem::signal(space_available);
    return c;
}

void *BoundedBuffer::operator new(size_t size) {
    return MemoryAllocator::mem_alloc( (size + mem_h_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE );
}

void BoundedBuffer::operator delete(void *addr) {
    MemoryAllocator::mem_free(addr);
}

bool BoundedBuffer::empty() const {
    return !item_available->getValue();
}

bool BoundedBuffer::full() const {
    return !space_available->getValue();
};

