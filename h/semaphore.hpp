
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

    friend class RISCV;

 // puno praznih pokazivaca, razmisli o listi

    enum error {
        MEMORY_ERR = -3,
        SEM_CLOSED = -4,
        SEMDEAD = -1,
        TIMEOUT = -2
    };

    static int wait(sem_t);
    static int signal(sem_t);

    int get_value() const;

    static int timedwait(sem_t, time_t time);
    static int trywait(sem_t);

    static int open(sem_t* handle, unsigned init);  // ???
    static int s_close(sem_t handle);

    void* operator new(size_t size);
    void operator delete(void* ptr);

//    static ListSEM semaphores;
    static Sem* first, *last;

private:

    explicit Sem(int init = 1) : value(init), next(nullptr), blocked() {}

    void block();
    void deblock();

    int value;
    Sem* next = nullptr;

    // bool isClosed

    ListTCB blocked;
    int timedBlock = 0;

    static void sem_add(Sem* toAdd);
    static void sem_remove(Sem* toDelete);

    // zameniti sa glubalnom listAdd (first, last, new) i listGet (first, last)
};



#endif //PROJECT_BASE_SEMAPHORE_HPP
