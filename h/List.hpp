//
// Created by os on 4/14/24.
//

#ifndef PROJECT_BASE_LIST_HPP
#define PROJECT_BASE_LIST_HPP

template<typename T>
class List {

private:
    struct Elem {
        T* data;
        Elem* next;

        Elem(T *data, Elem* next) : data(data), next(next) {}
    };

    Elem *head = nullptr, *tail = nullptr;

public:

    List() = default;
    List(const List<T> &) = delete;
    List<T> operator=(const List<T> &) = delete;

    /// dodavanje na pocetak po potrebi

    void add(T *newData) {
        Elem* newElem = new Elem(newData, nullptr);
        if (tail) tail = tail -> next = newElem;
        head = tail = newElem;
    }

    T* peek() {
        if (!head) return nullptr;
        return head -> data;
    }

    T* removeFirst() {
        if (!head) return nullptr;
        Elem* removed = head;
        head = head -> next;
        if (!head) tail = nullptr;
        T *ret = removed -> data;
        delete removed;
        return ret;

    }

};

#endif //PROJECT_BASE_LIST_HPP
