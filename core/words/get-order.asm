; ( -- widn .. wid0 n) 
; Search Order
; Get the current search order word list
VE_GET_ORDER:
    .dw $ff09
    .db "get-order",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GET_ORDER
XT_GET_ORDER:
    .dw DO_COLON
PFA_GET_ORDER:
    .dw XT_DOLITERAL
    .dw EE_ORDERLISTLEN
    .dw XT_FETCHE
    .dw XT_TO_R
    .dw XT_R_FETCH
    .dw XT_ZERO
    .dw XT_DODO
    .dw PFA_GET_ORDER2
PFA_GET_ORDER1:
    ; ( widlist n)
    .dw XT_DOLITERAL
    .dw EE_ORDERLIST
    .dw XT_I
    .dw XT_2STAR
    .dw XT_PLUS
    ; check if set
    .dw XT_FETCHE ; ( -- widlist n wid? )
    .dw XT_DOLOOP
    .dw PFA_GET_ORDER1
PFA_GET_ORDER2:
    .dw XT_R_FROM
    .dw XT_EXIT
