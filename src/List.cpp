#include "../h/List.hpp"

void List::add(TCB *tcb) {

    Elem* toAdd = new Elem(tcb);

    if (!head) head = tail = toAdd;
    else tail = tail -> next = toAdd;

}

TCB *List::get() {

    if (!head) return nullptr;

    TCB* tcb = head -> data;
//    Elem* oldHead = head;
    head = head -> next;

    if (!head) tail = nullptr;

    return tcb;
}

TCB *List::peek() {
    if (head) return head->data;
    else return nullptr;
}

List::Elem::Elem(TCB *tcb) : data(tcb), next(nullptr) {}
