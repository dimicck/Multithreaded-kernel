//#include "../h/List.hpp"
//
//template <typename T>
//void List<T>::add(T *t) {
//
//    Elem* toAdd = new Elem(t);
//
//    if (!head) head = tail = toAdd;
//    else tail = tail -> next = toAdd;
//
//    count++;
//}
//
//template <typename T>
//T* List<T>::get() {
//
//    if (!head) return nullptr;
//
//    T* t = head -> data;
//    Elem* oldHead = head;
//    head = head -> next;
//
//    if (!head) tail = nullptr;
//
//    delete oldHead;
//    count--;
//    return t;
//}
//
//template <typename T>
//T* List<T>::peek() {
//    if (head) return head->data;
//    else return nullptr;
//}
//
