#include "../h/syscall_c.h"
#include "../h/Memoryallocator.hpp"


// opsta funkcija, opsti argumenti
// op code -> registar a0 ___ argumenti reg a1 .. a4

void system_call(uint64 op_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    __asm__ volatile("ecall");
}

// size (bytes) => syscall -> num of block
void* mem_alloc (size_t size) {
    if (!size) return nullptr;
    void volatile *ptr;
    uint64 blocks = (mem_h_size + size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    system_call(MEM_ALLOC, blocks);
    __asm__ volatile("mv %0, a0" : "=r"(ptr));
    return (void*)ptr;
}

int mem_free(void* ptr) {
    int volatile a0;
    system_call(MEM_FREE, (uint64)ptr);
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

// sistemski poziv thread_create prima
// dodatno void* stack_space

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    int volatile ret;
    void* stack_space = nullptr;
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    system_call(THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg, (uint64)stack_space);
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return ret;
}

int thread_exit() {
    int volatile a0;
    system_call(THREAD_EXIT);
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

void thread_dispatch() {
    system_call(THREAD_DISPATCH);

}

int sem_open(sem_t* handle, unsigned init) {
    //if (init <= 0 || !handle) return -1;
    int volatile a0;
    system_call(SEM_OPEN, (uint64)handle, init);
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

int sem_close(sem_t handle) {
    if (!handle) return -1; // no sem
    int volatile a0;
    system_call(SEM_CLOSE, (uint64)handle);
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

int sem_wait(sem_t id) {
    int volatile a0;
    system_call(SEM_WAIT, (uint64)id);
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

int sem_timedwait(sem_t id, time_t timeout) {
    int volatile a0;
    system_call(SEM_TIMEDWAIT, (uint64)id, (uint64)timeout);
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

int sem_trywait(sem_t id) {
    int volatile a0;
    system_call(SEM_TRYWAIT, (uint64)id);
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

int sem_signal(sem_t id) {
    int volatile a0;
    system_call(SEM_SIGNAL, (uint64)id);
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

int time_sleep (time_t time) {
    int volatile a0;
    system_call(TIME_SLEEP, (uint64)time);
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

char getc() {
    char volatile a0;
    system_call(GETC);
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

void putc(char c) {
    system_call(PUTC, c);
}



