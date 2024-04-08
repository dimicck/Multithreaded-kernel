
#include "../h/riscv.hpp"

inline uint64 RISCV::rd_scause() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    return value;
}

inline void RISCV::wr_scause(uint64 value) {
    __asm__ volatile ("csrw scause, %0" : : "r"(value));
}

inline uint64 RISCV::rd_sepc() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    return value;
}

inline void RISCV::wr_sepc(uint64 value) {
    __asm__ volatile ("csrw scause, %0" : : "r"(value));
}

inline uint64 RISCV::rd_stvec() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void RISCV::wr_stvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
}

inline uint64 RISCV::rd_stval() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, stval" : "=r"(value));
    return value;
}

inline void RISCV::wr_stval(uint64 value) {
    __asm__ volatile ("csrw stval, %0" : : "r"(value));
}

inline uint64 RISCV::rd_sip() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sip" : "=r"(value));
    return value;
}

inline void RISCV::wr_sip(uint64 value) {
    __asm__ volatile ("csrw sip, %0" : : "r"(value));
}

inline uint64 RISCV::rd_sstatus() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    return value;
}

inline void RISCV::wr_sstatus(uint64 value) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
}

