; ( -- 32 )
VE_BL:
    .db $02, "bl", 0
    .dw VE_LATEST
    .set VE_LATEST = VE_BL
XT_BL:
    .dw DO_COLON
PFA_BL:
    .dw XT_DOLITERAL
    .dw 32
    .dw XT_EXIT
