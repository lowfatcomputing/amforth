; ( -- n ) 
; Tools
; Amount of available RAM (incl. PAD)
VE_UNUSED:
    .word 0xff06
    .ascii "unused"
    .word VE_HEAD
    .set VE_HEAD, VE_UNUSED
XT_UNUSED:
    .word DO_COLON
PFA_UNUSED:
    .word XT_SP0
    .word XT_HERE
    .word XT_MINUS
    .word XT_EXIT
