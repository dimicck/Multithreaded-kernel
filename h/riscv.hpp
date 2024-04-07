//
// Created by os on 4/7/24.
//

#ifndef PROJECT_BASE_RISCV_HPP
#define PROJECT_BASE_RISCV_HPP

#include "../lib/hw.h"

extern "C" void supervisorTrap();
// nagovestaj kompajleru da ce funkcija biti prevedena u C stilu

class RISCV {
public:
    static uint64 rd_scause();
    static void wr_scause(uint64 scause);

    static uint64 rd_sepc();
    static void wr_sepc(uint64 sepc);

    static uint64 rd_stvec();
    static void wr_stvec(uint64 stvec);

    static uint64 rd_stval();
    static void wr_stval(uint64 stval);

    static uint64 rd_sip();
    static void wr_sip(uint64 sip);

    static uint64 rd_sstatus();
    static void wr_sstatus(uint64 sstatus);

};

#endif //PROJECT_BASE_RISCV_HPP
