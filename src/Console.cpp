#include "../h/Console.hpp"

BoundedBuffer* myConsole::inputBuffer = nullptr;
BoundedBuffer* myConsole::outputBuffer = nullptr;
TCB* myConsole::char_handler = nullptr;

void myConsole::init() {
    inputBuffer = new BoundedBuffer();   // from controller to getc
    outputBuffer = new BoundedBuffer();  // from putc to controller
    //thread_create(&char_handler, char_handler_wrapper, nullptr);
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

void myConsole::char_handler_wrapper(void *) {

    while (true) { // dodatan uslov?

        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
            // console controller is ready for new char
            char c = myConsole::output_getc();
            if (c == '\r') continue;
            *(char *) CONSOLE_TX_DATA = c;
            // pop from output buffer and wr to TX DATA
        }
    }
}


