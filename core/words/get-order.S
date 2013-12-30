; ( -- widn .. wid0 n) 
; Search Order
; Get the current search order word list
VE_GET_ORDER:
    .word 0xff09
    .string "get-order"
    .word VE_HEAD
    .set VE_HEAD, VE_GET_ORDER
XT_GET_ORDER:
    .word DO_COLON
PFA_GET_ORDER:
    .word XT_DOLITERAL
    .word EE_ORDERLISTLEN
    .word XT_FETCH_EE_ARRAY
    .word XT_EXIT
