; ( x1 x2 -- x1 x2 x1 x2 ) 
; Stack
; Duplicate the 2 top elements
VE_2DUP:
    .word 0xff04
    .ascii "2dup"
    .word VE_HEAD
    .set VE_HEAD, VE_2DUP
XT_2DUP:
    .word DO_COLON
PFA_2DUP:
    .word XT_OVER
    .word XT_OVER
    .word XT_EXIT
