; ( --  )  
; Interrupt
; turns on all interrupts
VE_INTON:
    .word 0xff04
    .ascii "+int"
    .word VE_HEAD
    .set VE_HEAD, VE_INTON
XT_INTON:
    .word PFA_INTON
PFA_INTON:
    sei
    jmp_ DO_NEXT
