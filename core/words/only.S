; ( -- ) 
; Search Order
; replace the order list with the system default list
VE_ONLY:
    .word 0xff04
    .ascii "only"
    .word VE_HEAD
    .set VE_HEAD, VE_ONLY
XT_ONLY:
    .word DO_COLON
PFA_ONLY:
    .word XT_DOLITERAL
    .word EE_FORTHWORDLIST
    .word XT_DOLITERAL
    .word 1
    .word XT_SET_ORDER
    .word XT_EXIT
