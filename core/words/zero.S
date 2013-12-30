; ( -- 0 ) 
; Arithmetics
; place a value 0 on TOS
VE_ZERO:
    .word 0xff01
    .string "0"
    .word VE_HEAD
    .set VE_HEAD, VE_ZERO
XT_ZERO:
    .word PFA_ZERO
PFA_ZERO:
    savetos
PFA_ZERO1:
    movw tosl, zerol
    jmp_ DO_NEXT
