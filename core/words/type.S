; ( addr n -- ) 
; Character IO
; print a RAM based string
VE_TYPE:
    .word 0xff04
    .ascii "type"
    .word VE_HEAD
    .set VE_HEAD, VE_TYPE
XT_TYPE:
    .word DO_COLON
PFA_TYPE:
    .word XT_OVER
    .word XT_PLUS
    .word XT_SWAP
    .word XT_DOQDO
    .word PFA_TYPE2
PFA_TYPE1:
    .word XT_I
    .word XT_CFETCH
    .word XT_EMIT
    .word XT_DOLOOP
    .word PFA_TYPE1
PFA_TYPE2:
    .word XT_EXIT
