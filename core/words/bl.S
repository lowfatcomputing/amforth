; ( -- 32 ) 
; Character IO
; put ascii code of the blank to the stack
VE_BL:
    .word 0xff02
    .ascii "bl"
    .word VE_HEAD
    .set VE_HEAD, VE_BL
XT_BL:
    .word PFA_DOVARIABLE
PFA_BL:
    .word 32
