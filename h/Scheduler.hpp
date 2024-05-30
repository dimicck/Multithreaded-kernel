
#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

#include "thread.hpp"

class Scheduler {

    friend class RISCV;

public:
    static void init_scheduler();

    static TCB* get();
    static void put(TCB*);
    static TCB* peek();
    static bool empty();

    static int time_sleep(TCB*, time_t );

    void* operator new(size_t);
    void operator delete(void *);

    Scheduler(const Scheduler&) = delete;

private:

    static bool hasSleeping() {return  first_sleepy != nullptr;}
    Scheduler() = default;

    static void s_yield();

    static TCB* first, *last;
    static TCB* first_sleepy;

};


#endif //PROJECT_BASE_SCHEDULER_HPP
