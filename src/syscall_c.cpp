#include "../h/syscall_c.hpp"


extern "C" void interruptRoutine() {
   // ...
}

// opsta funkcija, opsti argumenti
// op code -> registar a0 ___ argumenti reg a1 .. a4

void system_call(uint64 op_code, uint64 a1 = 0, uint64 a2 = 0, uint64 a3 = 0, uint64 a4 = 0) {
    __asm__ volatile("ecall");
}

void* mem_alloc (size_t size) {
    if (!size) return nullptr;
    void volatile *ptr;
    system_call(MEM_ALLOC, size);
    __asm__ volatile("mv %0, a0" : "=r"(ptr));
    return (void*)ptr;
}

int mem_free(void* ptr) {
    int volatile a0;
    system_call(MEM_FREE, (uint64)ptr);
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

