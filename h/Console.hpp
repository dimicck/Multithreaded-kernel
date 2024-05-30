
#ifndef PROJECT_BASE_CONSOLE_HPP
#define PROJECT_BASE_CONSOLE_HPP

#include "BoundedBuffer.hpp"

class myConsole {

public:

    myConsole() = default;
    myConsole(const myConsole &) = delete;

    static BoundedBuffer *inputBuffer, *outputBuffer;

    static void init_myconsole();

    static char input_getc();       // from input buffer
    static void output_putc(char c); // to output buffer

    static char output_getc();            // from output buffer
    static void input_putc(char c);      // to input buffer

};

#endif //PROJECT_BASE_CONSOLE_HPP
