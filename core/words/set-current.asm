; ( wid -- ) Search Order
; R( -- )
; set current to wid
VE_SET_CURRENT:
    .dw $ff0b
    .db "set-current",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SET_CURRENT
XT_SET_CURRENT:
    .dw DO_COLON
PFA_SET_CURRENT:
    .dw XT_DOLITERAL
    .dw 22
    .dw XT_ESTORE
    .dw XT_EXIT
