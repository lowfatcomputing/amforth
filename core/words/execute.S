; ( xt -- ) 
; System
; execute XT
VE_EXECUTE:
    .word 0xff07
    .string "execute"
    .word VE_HEAD
    .set VE_HEAD, VE_EXECUTE
XT_EXECUTE:
    .word PFA_EXECUTE
PFA_EXECUTE:
    movw wl, tosl
    loadtos
    jmp_ DO_EXECUTE
