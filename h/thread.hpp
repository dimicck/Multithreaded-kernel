//
// Created by os on 4/9/24.
//

#ifndef PROJECT_BASE_THREAD_HPP
#define PROJECT_BASE_THREAD_HPP

#include "../lib/hw.h"
#include "../h/Memoryallocator.hpp"
#include "../h/riscv.hpp"

using routine_ptr = void(*)(void *);

// _thread je wrapper ove klase
class TCB final {

friend class RISCV;

public:

    enum state {
        RUNNABLE,
        SLEEPING,
        JOINED,
        FINISHED,
        BLOCKED
    };

     struct Context {
        // nadogradi kasnije
        uint64 pc;
        uint64 sp;
    };

     void start();

    static int _threadCreate(TCB** handle, routine_ptr routine, void* args, void* stack_space);

    static void yield(TCB*, TCB*);

    static void dispatch();

    static TCB* running; // tekuca nit
    state getState() {return current_state;}
    time_t getTimeSlice() const {return time_slice;}
    static bool isRunnable();
    bool isFinished() {return current_state == state::FINISHED;}
    void finish() { current_state = state::FINISHED; }


    void* operator new(size_t size);
    void operator delete(void* ptr);

private:

    static int id_count;
    static time_t time_slice_count;
    int id;
    TCB* next_ready;
    TCB* next_sleepy;
    time_t sleeping_time;
    time_t time_slice;
    routine_ptr routine;
    void* stack;
    void* args;
    Context context;
    state current_state; // pocetna vrednost ?????
    bool finished  = false;

    TCB(routine_ptr fun, void* args, void * stack, Context);

    static void contextSwitch(Context * oldContext, Context * newContext);

    static void wrapper();
};

#endif //PROJECT_BASE_THREAD_HPP
