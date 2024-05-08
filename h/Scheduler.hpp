
#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

#include "thread.hpp"
#include "List.hpp"

class Scheduler {

public:
    static void init_scheduler() {};

    static TCB* get();
    static void put(TCB*);
    static void put_to_sleep(TCB*, time_t );

    static bool empty();

    void* operator new(size_t);
    void operator delete(void *);

    Scheduler(const Scheduler&) = delete;

private:
    Scheduler() = default;

    static List<TCB> list;

};


#endif //PROJECT_BASE_SCHEDULER_HPP
