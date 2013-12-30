; ( widn .. wid0 n -- ) 
; Search Order
; replace the search order list
VE_SET_ORDER:
    .word 0xff09
    .string "set-order"
    .word VE_HEAD
    .set VE_HEAD, VE_SET_ORDER
XT_SET_ORDER:
    .word DO_COLON
PFA_SET_ORDER:
    .word XT_DOLITERAL
    .word EE_ORDERLISTLEN
    .word XT_STORE_EE_ARRAY
    .word XT_EXIT

