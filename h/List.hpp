//
// Created by os on 5/13/24.
//

#ifndef PROJECT_BASE_LIST_HPP
#define PROJECT_BASE_LIST_HPP
#include "thread.hpp"

class List {

public:

    void add(TCB* tcb);
    TCB* get();
    TCB* peek();

private:

    struct Elem {
        TCB* data;
        Elem* next;

        explicit Elem(TCB* tcb) : data(tcb), next(nullptr) {}
    };

    Elem *head = nullptr, *tail = nullptr;

};

#endif //PROJECT_BASE_LIST_HPP
