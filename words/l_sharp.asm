; ( -- ) Numeric IO
; R( -- )
; emties counted string at address from hld
VE_L_SHARP:
    .db $02, "<#",0
    .dw VE_HEAD
    .set VE_HEAD = VE_L_SHARP
XT_L_SHARP:
    .dw DO_COLON
PFA_L_SHARP:
    .dw XT_ZERO
    .dw XT_HLD
    .dw XT_STORE
    .dw XT_EXIT
