; (  -- addr ) 
; Stack
; current data stack pointer
VE_SP_FETCH:
    .word 0xff03
    .string "sp@"
    .word VE_HEAD
    .set VE_HEAD, VE_SP_FETCH
XT_SP_FETCH:
    .word PFA_SP_FETCH
PFA_SP_FETCH:
    savetos
    movw tosl, YL
    jmp_ DO_NEXT
