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
    this->myHandle = nullptr;
}

Thread::Thread() {
    this->body = wrapper;
    this->arg  = (void*) this;
    this->myHandle = nullptr;
}

Thread::~Thread() {
    delete &this->myHandle;
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::start() {
    return thread_create(&myHandle, this->body, this->arg);
}

void Thread::wrapper(void *arg) {
    auto* t = (Thread*) arg;
    t->run();
}

Semaphore::Semaphore(unsigned int init) : myHandle(nullptr) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    if (myHandle) sem_close(myHandle);
}

int Semaphore::wait() {
    if (myHandle) return sem_wait(myHandle);
    return -1;
}

int Semaphore::signal() {
    if (myHandle) return sem_signal(myHandle);
    return -1;
}

int Semaphore::timedWait(time_t time) {
    if (myHandle && time) return sem_timedwait(myHandle, time);
    return -1;
}

int Semaphore::tryWait() {
    if (myHandle) return sem_trywait(myHandle);
    return -1;
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

PeriodicThread::PeriodicThread(time_t period) : period(period) {}

void PeriodicThread::terminate() {
    thread_exit();
}

void PeriodicThread::run() {
    while (true) {
        periodicActivation();
        time_sleep(period);
    }
}