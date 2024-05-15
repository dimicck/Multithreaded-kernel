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
    this->body = body;
    this->arg = arg;
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::start() {
    return thread_create(&myHandle, &wrapper, this);
}

Thread::Thread() {
    this->body = nullptr;
    this->arg  = nullptr;
}

Thread::~Thread() {
    if (this->myHandle->isFinished()) delete myHandle;
}

void Thread::wrapper(void *arg) {
    // prosledjuje se sistemskom pozivu
    // treba da pokrene run metodu prosledjenog objekta
    Thread* t = (Thread*) arg;
    if (t->body) t->body(t->arg);
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

int Semaphore::timedWait(time_t time) {
    return sem_timedwait(myHandle, time);
}

int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}

char Console::getc() {
    return getc();
}

void Console::putc(char c) {
    putc(c);
}

PeriodicThread::PeriodicThread(time_t period) : period(period) {}

void PeriodicThread::terminate() {
    thread_exit();
}

