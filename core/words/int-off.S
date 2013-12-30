; ( -- ) 
; Interrupt
; turns off all interrupts 
VE_INTOFF:
    .word 0xff04
    .ascii "-int"
    .word VE_HEAD
    .set VE_HEAD, VE_INTOFF
XT_INTOFF:
    .word PFA_INTOFF
PFA_INTOFF:
    cli
    jmp_ DO_NEXT
