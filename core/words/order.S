; ( -- ) 
; Search Order
; print the wids of the current word list and the search order
VE_ORDER:
    .word 0xff05
    .string "order"
    .word VE_HEAD
    .set VE_HEAD, VE_ORDER
XT_ORDER:
    .word DO_COLON
PFA_ORDER:
    .word XT_GET_CURRENT
    .word XT_UDOT
    .word XT_CR
    .word XT_GET_ORDER
    .word XT_DUP
    .word XT_UDOT
    .word XT_ZERO
    .word XT_DOQDO
    .word PFA_ORDER2
PFA_ORDER1:
    .word XT_UDOT
    .word XT_SPACE         ; ( -- addr n)
    .word XT_DOLOOP
    .word PFA_ORDER1
PFA_ORDER2:
    .word XT_EXIT

