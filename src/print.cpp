#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

void myPrintString(char const* string) {
    while (*string != '\0') {
        putc(*string);
        string++;
    }
    putc('\n'); // delete later
}

void printInteger(uint64 num) {
    __putc('\n');
    if (!num) __putc('0');
    uint64 num2 = 0, zero_count = 0;
    while (num) {
        num2 *= 10;
        num2 += num % 10;
        if (!num2) ++zero_count;
        num /= 10;
    }
    while (num2) {
        __putc(num2 % 10 + '0');
        num2 /= 10;
    }
    while (zero_count--) __putc('0');
}