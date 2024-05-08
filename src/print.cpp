#include "../lib/console.h"
#include "../h/print.hpp"

void printString(char const* string) {
    while (*string != '\0') {
        __putc(*string);
        string++;
    }
}

void printInteger(uint64 integer) {
    static char digits[] = "0123456789";
    char buf[16];
    int i = 0, neg = 0;
    uint x;

    if (integer < 0) {
        neg = 1;
        x = -integer;
    } else x = integer;

    do buf[i++] = digits[x % 10];
    while ( x /= 10 != 0);

    if (neg) buf[i++] = '-';

    while (--i >= 0) __putc(buf[i]);
}