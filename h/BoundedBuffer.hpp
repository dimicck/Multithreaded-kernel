

#ifndef PROJECT_BASE_BOUNDEDBUFFER_HPP
#define PROJECT_BASE_BOUNDEDBUFFER_HPP

#include "../lib/hw.h"
#include "semaphore.hpp"

const int bufferSize = 100;

class BoundedBuffer {

public:
    
    BoundedBuffer();
    ~BoundedBuffer();

    void put(char c);
    char get();

    void* operator new (size_t size);
    void operator delete(void *addr);

private:

    int head, tail;
    sem_t space_available;
    sem_t item_available;
    char buffer[bufferSize];

};

#endif //PROJECT_BASE_BOUNDEDBUFFER_HPP
