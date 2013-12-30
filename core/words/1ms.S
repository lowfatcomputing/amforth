; ( -- )
; Time
; busy waits (almost) exactly 1 millisecond
VE_1MS:
    .word 0xff03
    .string "1ms"
    .word VE_HEAD
    .set VE_HEAD, VE_1MS
XT_1MS:
    .word PFA_1MS
PFA_1MS:
    delay 1000
    jmp_ DO_NEXT
