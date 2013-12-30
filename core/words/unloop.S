; ( -- ) (R: loop-sys -- ) 
; Compiler
; remove loop-sys, exit the loop and continue execution after it
VE_UNLOOP:
    .word 0xff06
    .ascii "unloop"
    .word VE_HEAD
    .set VE_HEAD, VE_UNLOOP
XT_UNLOOP:
    .word PFA_UNLOOP
PFA_UNLOOP:
    pop temp1
    pop temp0
    pop temp1
    pop temp0
    pop temp1
    pop temp0
    jmp_ DO_NEXT
