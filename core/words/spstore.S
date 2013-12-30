; ( addr -- i*x) 
; Stack
; set data stack pointer to addr
VE_SP_STORE:
    .word 0xff03
    .string "sp!"
    .word VE_HEAD
    .set VE_HEAD, VE_SP_STORE
XT_SP_STORE:
    .word PFA_SP_STORE
PFA_SP_STORE:
    movw YL, tosl
    loadtos
    jmp_ DO_NEXT
