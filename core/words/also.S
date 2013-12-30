; ( -- ) 
; Search Order
; Duplicate first entry in the current search order list
VE_ALSO:
    .word 0xff04
    .ascii "also"
    .word VE_HEAD
    .set VE_HEAD, VE_ALSO
XT_ALSO:
    .word DO_COLON
PFA_ALSO:
    .word XT_GET_ORDER
    .word XT_OVER
    .word XT_SWAP
    .word XT_1PLUS
    .word XT_SET_ORDER
    .word XT_EXIT
