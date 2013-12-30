; ( x1 x2 --  ) 
; Stack
; Remove the 2 top elements
VE_2DROP:
    .word 0xff05
    .ascii "2drop"
    .word VE_HEAD
    .set VE_HEAD, VE_2DROP
XT_2DROP:
    .word DO_COLON
PFA_2DROP:
    .word XT_DROP
    .word XT_DROP
    .word XT_EXIT
