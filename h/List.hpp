//
// Created by os on 5/13/24.
//

#ifndef PROJECT_BASE_LIST_HPP
#define PROJECT_BASE_LIST_HPP
#include "thread.hpp"

extern void printInteger(uint64);

template <typename T>
class List {

public:

    friend class RISCV;

    List() : head(nullptr), tail(nullptr) {};

    void add(T*);
    T* get();
    T* peek();

    inline int size() {return count;}

private:

    struct Elem {
        T* data;
        Elem* next;

        explicit Elem(T* data) : data(data), next(nullptr) {}
    };

    Elem *head, *tail;
    int count = 0;

    void remove(T *t);
};

typedef List<TCB> ListTCB;
using ListSEM = List<Sem>;

template <typename T>
void List<T>::add(T *t) {

    Elem* toAdd = new Elem(t);

    if (!head) head = tail = toAdd;
    else tail = tail -> next = toAdd;

    count++;
}

template <typename T>
T* List<T>::get() {

    if (!head) return nullptr;

    T* t = head -> data;
    Elem* oldHead = head;
    head = head -> next;

    if (!head) tail = nullptr;

    delete oldHead;
    count--;
    return t;
}

template <typename T>
T* List<T>::peek() {
    if (head) return head->data;
    else return nullptr;
}

template <typename T>
void List<T>::remove(T* t) {
    Elem* prev = nullptr, *elem = head;
    while (elem) {
        if (elem->data == t) {

            // found
            if (prev) {
                prev->next = elem->next;
                if (tail == elem) tail = prev;
            }
            else head = elem -> next;
            if (!head) tail = nullptr;

            delete elem;
            return;

        }
        prev = elem;
        elem = elem -> next;
    }
}


#endif //PROJECT_BASE_LIST_HPP
