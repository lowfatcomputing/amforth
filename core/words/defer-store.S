; ( xt1 xt2 -- ) 
; System
; stores xt1 as the xt to be executed when xt2 is called
VE_DEFERSTORE:
    .word 0xff06
    .ascii "defer!"
    .word VE_HEAD
    .set VE_HEAD, VE_DEFERSTORE
XT_DEFERSTORE:
    .word DO_COLON
PFA_DEFERSTORE:
    .word XT_DUP
    .word XT_DOLITERAL
    .word 3
    .word XT_PLUS   ; >body 2 +
    .word XT_FETCHI
    .word XT_EXECUTE
    .word XT_EXIT

