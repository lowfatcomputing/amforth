; ( -- widn .. wid0 n) Search Order
; R( -- )
; Get the current search order list
VE_GET_ORDER:
    .dw $ff09
    .db "get-order",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GET_ORDER
XT_GET_ORDER:
    .dw DO_COLON
PFA_GET_ORDER:
    .dw XT_DOLITERAL
    .dw NUMWORDLISTS
    .dw XT_DUP
    .dw XT_ZERO
    .dw XT_SWAP  ; ( -- numwl  0 numwl )
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

    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw -1
    .dw XT_EQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_GET_ORDER3
	.dw XT_DROP
	.dw XT_1MINUS
	.dw XT_DOBRANCH
	.dw PFA_GET_ORDER4
PFA_GET_ORDER3:
        .dw XT_SWAP
PFA_GET_ORDER4:
    .dw XT_DOLITERAL
    .dw -1
    .dw XT_DOPLUSLOOP
    .dw PFA_GET_ORDER1
PFA_GET_ORDER2:
    .dw XT_1PLUS
    .dw XT_EXIT
