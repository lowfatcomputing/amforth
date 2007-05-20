; ( d1 -- 0) Numeric IO
; R( -- )
; call # until a value of zero is reached
VE_SHARP_S:
    .db $02, "#s",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SHARP_S
XT_SHARP_S:
    .dw DO_COLON
PFA_SHARP_S:
    .dw XT_SHARP
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_OR
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_SHARP_S
    .dw XT_EXIT
