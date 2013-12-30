; ( -- ) 
; Search Order
; remove the first entry in the search order list
VE_PREVIOUS:
    .word 0xff08
    .ascii "previous"
    .word VE_HEAD
    .set VE_HEAD, VE_PREVIOUS
XT_PREVIOUS:
    .word DO_COLON	
PFA_PREVIOUS:
    .word XT_GET_ORDER
    .word XT_SWAP
    .word XT_DROP
    .word XT_1MINUS
    .word XT_DUP
    .word XT_EQUALZERO
    .word XT_DOCONDBRANCH
    .word PFA_PREVIOUS1
    .word XT_DOLITERAL
    .word -50
    .word XT_THROW
PFA_PREVIOUS1:
    .word XT_SET_ORDER
    .word XT_EXIT
