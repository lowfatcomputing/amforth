;;;;;;;;;;;;;;;;;;;;;;
; ( n -- )
; 
VE_DOT:
    .db $01, "."
    .dw VE_HEAD
    .set VE_HEAD = VE_DOT
XT_DOT:
    .dw DO_COLON
PFA_DOT:
    .dw XT_L_SHARP
    .dw XT_SHARP_S
    .dw XT_BL
    .dw XT_HOLD
    .dw XT_SHARP_G
    .dw XT_TYPE
    .dw XT_EXIT
