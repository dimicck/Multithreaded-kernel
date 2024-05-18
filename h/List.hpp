//
// Created by os on 5/13/24.
//

#ifndef PROJECT_BASE_LIST_HPP
#define PROJECT_BASE_LIST_HPP
#include "thread.hpp"

extern void printInteger(uint64);

class List {

public:

    List() : head(nullptr), tail(nullptr) {};

    void add(TCB* tcb);
    TCB* get();
    TCB* peek();

    void print() {
        if (!head || !tail) putc('Q');
        else {
            printInteger((uint64)head);
            printInteger((uint64)tail);
        }
    }

private:

    struct Elem {
        TCB* data = nullptr;
        Elem* next = nullptr;

        explicit Elem(TCB* tcb);
    };

    Elem *head, *tail;

};

#endif //PROJECT_BASE_LIST_HPP
