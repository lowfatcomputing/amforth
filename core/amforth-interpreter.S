; the inner interpreter.

#include <avr/common.h>

DO_COLON:
    push XH
    push XL          ; PUSH IP
    movw XL, r24
    adiw XL, 1
DO_NEXT:
    brts DO_INTERRUPT
    mov ZL, XL        ; READ IP
    readflashcell r24, r25
    adiw XL, 1        ; INC IP

DO_EXECUTE:
    movw ZL, r24
    readflashcell temp0,temp1
    movw ZL, temp0
    ijmp

.globl DO_INTERRUPT
DO_INTERRUPT:
    ; here we deal with interrupts the forth way
    clt
    ldi r24, lo8(XT_ISREXEC)
    ldi r25, hi8(XT_ISREXEC)
    rjmp DO_EXECUTE
