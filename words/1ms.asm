; ( n1 -- )
VE_1MS:
    .db $03, "1ms"
    .dw VE_HEAD
    .set VE_HEAD = VE_1MS
XT_1MS:
    .dw PFA_1MS
PFA_1MS:
    .set delay_cycles = cpu_frequency / 1000
    ldi zl, LOW( delay_cycles / 4 )
    ldi zh, HIGH(delay_cycles / 4 )
PFA_1MS1:
    sbiw zl, 1
    brne PFA_1MS1
    rjmp DO_NEXT
