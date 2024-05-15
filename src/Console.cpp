#include "../h/Console.hpp"

BoundedBuffer* myConsole::inputBuffer = nullptr;
BoundedBuffer* myConsole::outputBuffer = nullptr;

void myConsole::init() {
    inputBuffer = new BoundedBuffer();
    outputBuffer = new BoundedBuffer();
}

char myConsole::getc() {
    return inputBuffer->get();
}

void myConsole::putc(char c) {
    outputBuffer->put(c);
}

char myConsole::kgetc() {
    return outputBuffer->get();
}

void myConsole::kputc(char c) {
    inputBuffer->put(c);
}