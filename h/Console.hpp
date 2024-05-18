
#ifndef PROJECT_BASE_CONSOLE_HPP
#define PROJECT_BASE_CONSOLE_HPP

#include "BoundedBuffer.hpp"

class myConsole {

    myConsole() = default;
    myConsole(const myConsole &) = delete;

public:

    static BoundedBuffer *inputBuffer, *outputBuffer;

    static void init();

    static char input_getc();       // from input buffer
    static void output_putc(char c); // to output buffer

    static char output_getc();            // from output buffer
    static void input_putc(char c);      // to input buffer

    //for console controller
    static TCB* char_handler;
    static void char_handler_wrapper(void*);
};

#endif //PROJECT_BASE_CONSOLE_HPP
