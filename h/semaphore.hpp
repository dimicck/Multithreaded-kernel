
#ifndef PROJECT_BASE_SEMAPHORE_HPP
#define PROJECT_BASE_SEMAPHORE_HPP

#include "Scheduler.hpp"
#include "thread.hpp"
#include "../lib/hw.h"

class Sem;
typedef Sem* sem_t;

class Sem {
public:

    enum error {
        MEMORY_ERR = -1,
        NEG_VALUE  = -2,
        SEM_CLOSED = -3,
        NO_SEM_ERR = -4
    };

    int wait();
    int signal();

    int timedWait(time_t time);
    int trywait();

    static int open(sem_t* handle, unsigned init);  // ???
    static int s_close(sem_t handle);

    void* operator new(size_t size);
    void operator delete(void* ptr);

private:

    explicit Sem(int init = 1) : value(init), isClosed(false) {}

    void block();
    void deblock();

    int value;
    bool isClosed;

    TCB* last = nullptr; // blocked 'list'
    TCB* first= nullptr;

};

typedef Sem _sem;

#endif //PROJECT_BASE_SEMAPHORE_HPP
