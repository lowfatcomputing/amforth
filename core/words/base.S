; ( -- a-addr ) 
; Numeric IO
; location of the cell containing the number conversion radix
VE_BASE:
    .word 0xff04
    .ascii "base"
    .word VE_HEAD
    .set VE_HEAD, VE_BASE
XT_BASE:
    .word PFA_DOUSER
PFA_BASE:
    .word USER_BASE
