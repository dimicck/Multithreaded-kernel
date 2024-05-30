//
// Created by os on 4/9/24.
//

#ifndef PROJECT_BASE_THREAD_HPP
#define PROJECT_BASE_THREAD_HPP

#include "../lib/hw.h"
#include "../h/Memoryallocator.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

//extern void thread_dispatch();

using routine_ptr = void(*)(void *);

// _thread je wrapper ove klase
class TCB final {

    friend class RISCV;
    friend class Sem;
    friend class Scheduler;

public:

    static TCB* running; // current thread

    enum state {
        RUNNABLE,
        SLEEPING,
        CREATED,
        FINISHED,
        BLOCKED
    };
    struct Context {
        // nadogradi kasnije
        uint64 pc;
        uint64 sp;
        uint64 sstatus;
        uint64 sepc;
    };

    static int _threadCreate(TCB** handle, routine_ptr routine, void* args, void* stack_space); // + time

    static void yield(TCB*, TCB*);

    static void dispatch();

    time_t getTimeSlice() const {return time_slice;}

    static bool isRunnable();

    bool isFinished() {return current_state == state::FINISHED;}

    void finish() { current_state = state::FINISHED; }

    ~TCB() {delete[] stack;}

    void* operator new(size_t size);
    void operator delete(void* ptr);

private:

    static int id_count;
    static time_t time_slice_count;

    int id;

    TCB* next_ready; // scheduler
    TCB* next_sleepy;

    time_t time_on_sem;
    time_t sleeping_time;
    time_t time_slice;

    routine_ptr routine;
    void* args;
    uint64 * stack;
    Context context;
    state current_state;

    TCB(routine_ptr fun, void* args, void * stack, Context);

    static void contextSwitch(Context * oldContext, Context * newContext);

    static void wrapper();
    static int _threadExit();
};

#endif //PROJECT_BASE_THREAD_HPP
