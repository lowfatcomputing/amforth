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
    .dw -1
    .dw XT_EQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_SET_ORDER0
	.dw XT_DROP
	.dw XT_DOLITERAL
	.dw EE_FORTHWORDLIST
	.dw XT_DOLITERAL
	.dw 1
PFA_SET_ORDER0:
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_SET_ORDER2
PFA_SET_ORDER1:
    .dw XT_I
    .dw XT_2STAR
    .dw XT_DOLITERAL
    .dw EE_ORDERLIST
    .dw XT_PLUS
    .dw XT_STOREE
    .dw XT_DOLOOP
    .dw PFA_SET_ORDER1
PFA_SET_ORDER2:
    .dw XT_DOLITERAL
    .dw -1
    .dw XT_DOLITERAL
    .dw EE_ORDERLIST
    .dw XT_R_FROM
    .dw XT_2STAR
    .dw XT_PLUS
    .dw XT_STOREE
    .dw XT_EXIT
