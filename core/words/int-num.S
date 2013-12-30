; ( -- n )  
; Interrupt
; number of interrupt vectors (0 based)
VE_NUMINT:
    .word 0xff04
    .ascii "#int"
    .word VE_HEAD
    .set VE_HEAD, VE_NUMINT
XT_NUMINT:
    .word PFA_DOVARIABLE
PFA_NUMINT:
    .word INTVECTORS
