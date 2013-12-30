; ( -- ) System
; R( -- )
; application specific turnkey action
VE_APPLTURNKEY:
    .word 0xff0b
    .string "applturnkey"
    .word VE_HEAD
    .set VE_HEAD, VE_APPLTURNKEY
XT_APPLTURNKEY:
    .word DO_COLON
PFA_APPLTURNKEY:
    .word XT_USART
    .word XT_INTON
    .word XT_VER
    .word XT_SPACE
    .word XT_DOSLITERAL
    .word 10
    .ascii "Forthduino"
    .word XT_ITYPE

    .word XT_EXIT
