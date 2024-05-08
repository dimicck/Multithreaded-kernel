#include "../h/syscall_cpp.hpp"
#include "../h/Memoryallocator.hpp"

void* operator new (size_t size) {
    // operator new prosledjuje bajtove
    return mem_alloc(size);
}

void* operator new[](size_t size) {
    // operator new prosledjuje bajtove
    return mem_alloc(size);
}

void operator delete[](void* ptr) noexcept {
     mem_free(ptr);
}

void operator delete(void *ptr) noexcept {
    mem_free(ptr);
}

Thread::Thread(void (*body)(void *), void *arg) {
    // Circular buffer ???
    this->body = body;
    this->arg = arg;
}

int Thread::sleep(time_t) {
    return 0;
}

void Thread::dispatch() {

}

int Thread::start() {
    return thread_create(&myHandle, &wrapper, this);
    // wrapper treba da pokrene run
}

Thread::Thread() {

}

Thread::~Thread() {

}

void Thread::wrapper(void *arg) {
    // prosledjuje se sistemskom pozivu
    // treba da pokrene run metodu prosledjenog objekta
    Thread* t = (Thread*) arg;
    if (t->body) t->body(t->arg);
    else t->run(); /// ????????????????????
}
