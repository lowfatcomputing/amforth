;;;;;;;;;;;;;;;;;;;;;;
; ( n -- )
; 
VE_DOT:
    .db $01, "."
    .dw VE_LATEST
    .set VE_LATEST = VE_DOT
XT_DOT:
    .dw DO_COLON
PFA_DOT:
    .dw XT_DUP
    .dw XT_ABS
    .dw XT_L_SHARP
    .dw XT_SHARP_S
    .dw XT_SWAP
    .dw XT_SIGN
    .dw XT_BL
    .dw XT_HOLD
    .dw XT_SHARP_G
    .dw XT_TYPE
    .dw XT_EXIT
