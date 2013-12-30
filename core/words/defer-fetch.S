; ( xt1 -- xt2 ) 
; System
; returns the XT associated with the given XT
VE_DEFERFETCH:
    .word 0xff06
    .ascii "defer@"
    .word VE_HEAD
    .set VE_HEAD, VE_DEFERFETCH
XT_DEFERFETCH:
    .word DO_COLON
PFA_DEFERFETCH:
    .word XT_DUP
    .word XT_1PLUS ; >body
    .word XT_1PLUS 
    .word XT_FETCHI
    .word XT_EXECUTE
    .word XT_EXIT
