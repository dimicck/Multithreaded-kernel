
#ifndef PROJECT_BASE_CONSOLE_HPP
#define PROJECT_BASE_CONSOLE_HPP

#include "BoundedBuffer.hpp"

class myConsole {

    myConsole() = default;
    myConsole(const myConsole &) = delete;

public:

    static BoundedBuffer *inputBuffer, *outputBuffer;

    static void init();

    static char getc();       // from input buffer
    static void putc(char c); // to output buffer

    static char kgetc();      // from output buffer
    static void kputc(char c);      // to input buffer

    //for console controller
};

#endif //PROJECT_BASE_CONSOLE_HPP
