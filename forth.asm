; 
; the inner interpreter. 
DO_DODOES:
    adiw wl, 1
    st -Y, wl
    st -Y, wh
    
    pop wh
    pop wl
    
    push xl
    push xh
    movw xl, wl
    rjmp DO_NEXT

DO_COLON: ; 31 CPU cycles to ijmp
    push xl
    push xh          ; PUSH IP
    adiw wl, 1       ; set W to PFA
    movw xl, wl

DO_NEXT: ; 24 CPU cycles to ijmp
    brts DO_INTERRUPT
    movw zl,xl        ; READ IP
    lsl zl
    rol zh
    lpm wl, Z+
    lpm wh, Z      ; done read IP
    adiw xl, 1        ; INC IP

DO_EXECUTE: ; 12 cpu cycles to ijmp
    movw zl, wl
    lsl zl
    rol zh
    lpm temp0, Z+
    lpm temp1, Z
    movw zl, temp0
    ijmp

DO_INTERRUPT: ; 12 cpu cycles to rjmp (+12=24 to ijmp)
    ; here we deal with interrupts the forth way
    lds temp0, intcur
    ldi zl, LOW(intvec)
    ldi zh, HIGH(intvec)
    lsl temp0
    add zl, temp0
    adc zh, zeroh
    ldd wl, Z+0
    ldd wh, Z+1

    clt ; clear the t flag to indicate that the interrupt is handled
    rjmp DO_EXECUTE
