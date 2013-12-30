; ( -- wid) 
; Search Order
; get the wid of the current compilation word list
VE_GET_CURRENT:
    .word 0xff0b
    .string "get-current"
    .word VE_HEAD
    .set VE_HEAD, VE_GET_CURRENT
XT_GET_CURRENT:
    .word DO_COLON
PFA_GET_CURRENT:
    .word XT_DOLITERAL
    .word EE_CURRENT
    .word XT_FETCHE
    .word XT_EXIT
