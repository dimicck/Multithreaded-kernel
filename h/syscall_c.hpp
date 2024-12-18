
#ifndef PROJECT_BASE_SYSCALLL_C_HPP
#define PROJECT_BASE_SYSCALLL_C_HPP

#include "../lib/hw.h"

enum CODES {
    MEM_ALLOC = 0x01,
    MEM_FREE  = 0x02,
    THREAD_CREATE = 0x11,
    THREAD_EXIT = 0x12,
    THREAD_DISPATCH = 0x13,
    SEM_OPEN = 0x21,
    SEM_CLOSE = 0x22,
    SEM_WAIT = 0x23,
    SEM_SIGNAL = 0x24,
    SEM_TIMEDWAIT = 0x25,
    SEM_TRYWAIT = 0x26,
    TIME_SLEEP = 0x31,
    GETC = 0x41,
    PUTC = 0x42
};

class Sem;
class TCB;

void* mem_alloc (size_t size); //0x01
int mem_free (void*); //0x02

typedef TCB* thread_t;

int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);

int thread_exit (); //0x12
void thread_dispatch (); //0x13

typedef Sem* sem_t;

int sem_open (sem_t* handle, unsigned init); //0x21

int sem_close (sem_t handle);//0x22

int sem_wait (sem_t id);//0x23

int sem_signal (sem_t id);//0x24

int sem_timedwait(
        sem_t id,
        time_t timeout
); //0x25

int sem_trywait(sem_t id); //0x26

typedef unsigned long time_t;

int time_sleep (time_t);//0x31

const int EOF = -1;

char getc ();//0x41

void putc (char);//0x42

#endif
