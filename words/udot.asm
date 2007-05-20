; ( n -- ) Numeric IO
; R( -- )
; unsigned numeric output
VE_UDOT:
    .db $02, "u.",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UDOT
XT_UDOT:
    .dw DO_COLON
PFA_UDOT:
    .dw XT_ZERO
    .dw XT_SWAP
    .dw XT_L_SHARP
    .dw XT_SHARP_S
    .dw XT_BL
    .dw XT_HOLD
    .dw XT_SHARP_G
    .dw XT_TYPE
    .dw XT_EXIT
