; ( -- )
; Time
; busy waits (almost) exactly 1 millisecond
VE_1MS:
    .dw $ff03
    .db "1ms",0
    .dw VE_HEAD
    .set VE_HEAD = VE_1MS
XT_1MS:
    .dw PFA_1MS
    ; the delay loop core has 5 CPU cycles (or microseconds
    ; at 1MHz. To reach 1ms, we need 200 cycles per MHz.
    ; some constant overhead of the forth kernel as well
PFA_1MS:
    .set delay_cycles = F_CPU / 1000
    ldi zl, LOW( delay_cycles / 5 )
    ldi zh, HIGH(delay_cycles / 5 )
    sbiw zl, 42 ; internal plus forth kernel overhead
PFA_1MS1:
    sbiw zl, 1
    brts PFA_1MS2  ; leave if T-Flag is set, we need to deal with an interrupt
    brne PFA_1MS1
PFA_1MS2:
    jmp_ DO_NEXT
