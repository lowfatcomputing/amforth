; ( n -- )
; R( -- )
VE_DOT:
    .db $01, "."
    .dw VE_HEAD
    .set VE_HEAD = VE_DOT
XT_DOT:
    .dw DO_COLON
PFA_DOT:
    .dw XT_BASE
    .dw XT_FETCH
    .dw XT_DOLITERAL
    .dw 10
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_DOT1
    .dw XT_L_SHARP
    .dw XT_SHARP_S
    .dw XT_DOBRANCH
    .dw PFA_DOT2
PFA_DOT1:
    .dw XT_DUP
    .dw XT_ABS
    .dw XT_L_SHARP
    .dw XT_SHARP_S
    .dw XT_SWAP
    .dw XT_SIGN
PFA_DOT2:
    .dw XT_BL
    .dw XT_HOLD
    .dw XT_SHARP_G

    .dw XT_TYPE
    .dw XT_EXIT
