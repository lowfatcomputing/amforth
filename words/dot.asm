; ( n -- ) Numeric IO
; R( -- )
; prints TOS in free number format
VE_DOT:
    .db $01, "."
    .dw VE_HEAD
    .set VE_HEAD = VE_DOT
XT_DOT:
    .dw DO_COLON
PFA_DOT:
    .dw XT_DUP
    .dw XT_ABS
    .dw XT_S2D
    .dw XT_L_SHARP
    .dw XT_SHARP_S
    .dw XT_ROT
    .dw XT_SIGN
    .dw XT_BL
    .dw XT_HOLD
    .dw XT_SHARP_G
    .dw XT_TYPE
    .dw XT_EXIT
