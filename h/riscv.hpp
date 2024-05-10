//
// Created by os on 4/7/24.
//

#ifndef PROJECT_BASE_RISCV_HPP
#define PROJECT_BASE_RISCV_HPP

#include "../lib/hw.h"

class RISCV {
public:

    enum causes {
        SOFTWARE = 0x800000000000001UL,
        EXTERNAL = 0x800000000000009UL,
        U_ECALL  = 0x000000000000008UL,
        S_ECALL  = 0x000000000000009UL
    };

    static void supervisor_trap();
    static void handle_interrupt();

    static void push_regs();
    static void pop_regs();

    static uint64 rd_scause();
    static void wr_scause(uint64 value);

    static uint64 rd_sepc();
    static void wr_sepc(uint64 value);

    static uint64 rd_stvec();
    static void wr_stvec(uint64 value);

    static uint64 rd_stval();
    static void wr_stval(uint64 value);

    static uint64 rd_sip();
    static void wr_sip(uint64 value);

    static uint64 rd_sstatus();
    static void wr_sstatus(uint64 value);

    static inline void mask_sip(uint64 mask) {
        __asm__ volatile("csrc sip, %0" : : "r"(mask));
    }

    static inline void mask_status(uint64 mask) {
        __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    };

    static void popSppSpie();
    // pop sstatus.spp and sstatus.spie bits
    // must be in cpp !!!

    enum mask_sstatus {
        SIE = (1 << 1),
        SPIE =(1 << 5),
        SSP = (1 << 8)
    };

    enum mask_sip_sie {
        SS = (1 << 1),
        SE = (1 << 9)
    };

};

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
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
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

#endif //PROJECT_BASE_RISCV_HPP
