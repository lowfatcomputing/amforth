; ( -- ) 
; Search Order
; Make the compilation word list the same as the current first word list in the search order.
VE_DEFINITIONS:
    .word 0xff0b
    .string "definitions"
    .word VE_HEAD
    .set VE_HEAD, VE_DEFINITIONS
XT_DEFINITIONS:
    .word DO_COLON
PFA_DEFINITIONS:
    .word XT_GET_ORDER
    .word XT_OVER
    .word XT_SET_CURRENT
    ; now empty the order list on stack
    .word XT_ZERO
    .word XT_DOQDO
    .word PFA_DEFINITIONS2
PFA_DEFINITIONS1:
    .word XT_DROP
    .word XT_DOLOOP
    .word PFA_DEFINITIONS1
PFA_DEFINITIONS2:
    .word XT_EXIT
