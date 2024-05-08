//
// Created by os on 5/1/24.
//

#ifndef PROJECT_BASE_SEMAPHORE_HPP
#define PROJECT_BASE_SEMAPHORE_HPP
#include "List.hpp"
#include "Scheduler.hpp"
#include "thread.hpp"
#include "../lib/hw.h"

class Sem {
public:

    // destruktor

    explicit Sem(unsigned int init = 1) : value(init), isClosed(false) {}
    int wait();
    int signal();
    int timedWait(time_t);

    void block();
    void deblock();

private:

    int value;
    bool isClosed;
    List<TCB> blocked;
};

#endif //PROJECT_BASE_SEMAPHORE_HPP
