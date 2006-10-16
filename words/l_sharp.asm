; ( -- )
; emties counted string at address from hld
VE_L_SHARP:
    .db $02, "<#",0
    .dw VE_LATEST
    .set VE_LATEST = VE_L_SHARP
XT_L_SHARP:
    .dw DO_COLON
PFA_L_SHARP:
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_HLD
    .dw XT_STORE
    .dw XT_EXIT
