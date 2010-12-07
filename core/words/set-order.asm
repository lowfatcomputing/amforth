; ( widn .. wid0 n -- ) Search Order
; R( -- )
; replace the order list
VE_SET_ORDER:
    .dw $ff09
    .db "set-order",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SET_ORDER
XT_SET_ORDER:
    .dw DO_COLON
PFA_SET_ORDER:
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw EE_ORDERLISTLEN
    .dw XT_STOREE
    
    .dw XT_ZERO
    .dw XT_DODO
    .dw PFA_SETORDER2
PFA_SETORDER1:
    .dw XT_DOLITERAL
    .dw EE_ORDERLIST
    .dw XT_I
    .dw XT_2STAR
    .dw XT_PLUS
    .dw XT_STOREE
    .dw XT_DOLOOP
    .dw PFA_SETORDER1
PFA_SETORDER2:
    .dw XT_EXIT
