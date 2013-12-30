; ( i --  ) 
; Interrupt
; trigger an interrupt
VE_INTTRAP:
    .word 0xff08
    .ascii "int-trap"
    .word VE_HEAD
    .set VE_HEAD, VE_INTTRAP
XT_INTTRAP:
    .word PFA_INTTRAP
PFA_INTTRAP:
    sts intcur, tosl
    loadtos
    set ; set the interrupt flag for the inner interpreter
    jmp_ DO_NEXT
