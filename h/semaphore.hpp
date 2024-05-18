
#ifndef PROJECT_BASE_SEMAPHORE_HPP
#define PROJECT_BASE_SEMAPHORE_HPP

#include "Scheduler.hpp"
#include "thread.hpp"
#include "../lib/hw.h"
#include "List.hpp"

class Sem;
typedef Sem* sem_t;

class Sem {
public:

 // puno praznih pokazivaca, razmisli o listi

    enum error {
        MEMORY_ERR = -1,
        SEM_CLOSED = -3
    };

    static int wait(sem_t);
    static int signal(sem_t);

    int getValue() const;

    static int timedWait(sem_t, time_t time);
    static int trywait(sem_t);

    static int open(sem_t* handle, unsigned init);  // ???
    static int s_close(sem_t handle);

    void* operator new(size_t size);
    void operator delete(void* ptr);

private:

    explicit Sem(int init = 1) : value(init), blocked() {}

    void block();
    void deblock();

    int value;
    // bool isClosed;

    List blocked;
};

typedef Sem _sem;

#endif //PROJECT_BASE_SEMAPHORE_HPP
