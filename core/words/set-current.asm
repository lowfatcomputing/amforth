; ( wid -- ) Search Order
; R( -- )
; set current to given word list 
VE_SET_CURRENT:
    .dw $ff0b
    .db "set-current",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SET_CURRENT
XT_SET_CURRENT:
    .dw DO_COLON
PFA_SET_CURRENT:
    .dw XT_DOLITERAL
    .dw EE_CURRENT
    .dw XT_STOREE
    .dw XT_EXIT
