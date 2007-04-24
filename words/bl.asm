; ( -- 32 ) Character IO
; R( -- )
; put ascii code of the blank to the stack
VE_BL:
    .db $02, "bl", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_BL
XT_BL:
    .dw PFA_DOVARIABLE
PFA_BL:
    .dw 32
