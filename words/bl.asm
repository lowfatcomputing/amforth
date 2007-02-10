; ( -- 32 )
; R( -- )
VE_BL:
    .db $02, "bl", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_BL
XT_BL:
    .dw PFA_DOVARIABLE
PFA_BL:
    .dw 32
