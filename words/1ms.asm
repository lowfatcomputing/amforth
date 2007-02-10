; (  -- )
; R( -- )
VE_1MS:
    .db $03, "1ms"
    .dw VE_HEAD
    .set VE_HEAD = VE_1MS
XT_1MS:
    .dw PFA_1MS
    ; error: the additional instructions need appr.
    ;        4 cpu cycles, Z should be decreased by 1 or 2
PFA_1MS:
    .set delay_cycles = cpu_frequency / 1000
    ldi zl, LOW( delay_cycles / 4 )
    ldi zh, HIGH(delay_cycles / 4 )
    sbiw zl, 2
PFA_1MS1:
    sbiw zl, 1
    brne PFA_1MS1
    rjmp DO_NEXT

; millisecods: 1ms is needed for organizing and housekeeping
; : ms 1- 0 do 1ms loop ;