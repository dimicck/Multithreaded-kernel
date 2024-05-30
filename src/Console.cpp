#include "../h/Console.hpp"

BoundedBuffer* myConsole::inputBuffer = nullptr;
BoundedBuffer* myConsole::outputBuffer = nullptr;

void myConsole::init_myconsole() {
    inputBuffer = new BoundedBuffer();   // from controller to getc
    outputBuffer = new BoundedBuffer();  // from putc to controller
}

char myConsole::input_getc() {
    return inputBuffer->get();
}

void myConsole::output_putc(char c) {
    outputBuffer->put(c);
}

char myConsole::output_getc() {
    return outputBuffer->get();
}

void myConsole::input_putc(char c) {
    inputBuffer->put(c);
}

bool myConsole::no_work_for_con() {
    return outputBuffer->empty();
}
