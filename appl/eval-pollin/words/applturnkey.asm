; ( -- ) System
; R( -- )
; application specific turnkey action
VE_APPLTURNKEY:
    .dw $ff0b
    .db "applturnkey",0
    .dw VE_HEAD
    .set VE_HEAD = VE_APPLTURNKEY
XT_APPLTURNKEY:
    .dw DO_COLON
PFA_APPLTURNKEY:
    .dw XT_BAUD0
    .dw XT_USART0
    .dw XT_TOUSART0
    .dw XT_INTON
    .dw XT_VER
    .dw XT_EXIT
