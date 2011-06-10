; the inner interpreter.
DO_DODOES:
    savetos
    movw tosl, wl
    adiw tosl, 1
    ; the following takes the address from a real uC-call
.if (pclen==3)
    pop wh ; some 128K Flash devices use 3 cells for call/ret
.endif
    pop wh
    pop wl

    push XH
    push XL
    movw XL, wl
    rjmp DO_NEXT

DO_COLON:
    push XH
    push XL          ; PUSH IP
    movw XL, wl
    adiw xl, 1
DO_NEXT:
    brts DO_INTERRUPT
    movw zl, XL        ; READ IP
    readflashcell wl, wh
    adiw XL, 1        ; INC IP

DO_EXECUTE:
    movw zl, wl
    readflashcell temp0,temp1
    movw zl, temp0
    ijmp

DO_INTERRUPT:
    ; here we deal with interrupts the forth way
    clt
    ldi wl, LOW(XT_ISREXEC)
    ldi wh, HIGH(XT_ISREXEC)
    rjmp DO_EXECUTE
