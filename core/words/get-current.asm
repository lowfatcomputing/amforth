; ( -- wid) Search Order
; R( -- )
; get the current word list
VE_GET_CURRENT:
    .dw $ff0b
    .db "get-current",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GET_CURRENT
XT_GET_CURRENT:
    .dw DO_COLON
PFA_GET_CURRENT:
    .dw XT_DOLITERAL
    .dw 22
    .dw XT_EFETCH
    .dw XT_EXIT
