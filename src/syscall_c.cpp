#include "../h/syscall_c.h"
#include "../h/Memoryallocator.hpp"


// opsta funkcija, opsti argumenti
// op code -> registar a0 ___ argumenti reg a1 .. a4

void system_call(uint64 op_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    __asm__ volatile("ecall");
}

void* mem_alloc (size_t size) {
    if (!size) return nullptr;
    void volatile *ptr;
    system_call(MEM_ALLOC, size + mem_h_size);
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

    void* stack_space = nullptr;
    if (start_routine) stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    if (!stack_space) return -1; // error
    system_call(THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg, (uint64)stack_space);
    int volatile a0;
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;

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

int sem_open() {
    return 0;
}

int sem_close() {
    return 0;
}

int sem_wait() {
 return 0;
}

int sem_signal() {
    return 0;
}

char getc() {
    return 0;
}

void putc(char c) {

}



