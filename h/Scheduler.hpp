
#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

#include "thread.hpp"

class Scheduler {

public:
    static void init_scheduler() {};

    static TCB* get();
    static void put(TCB*);
    static TCB* peek();
    static bool empty();

    static void put_to_sleep(TCB*, time_t );

    void* operator new(size_t);
    void operator delete(void *);

    Scheduler(const Scheduler&) = delete;

private:

    Scheduler() = default;

    struct Elem {
        friend class Scheduler;
        TCB* data;
        Elem* next;
        Elem(TCB *data, Elem* next) : data(data), next(next) {}
    };

    static Elem *tail;
    static Elem *head;

};


#endif //PROJECT_BASE_SCHEDULER_HPP
