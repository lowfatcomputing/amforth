; ( d1 -- addr count ) Numeric IO
; R( -- )
; convert HLD buffer to a usable string
VE_SHARP_G:
    .db $02, "#>",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SHARP_G
XT_SHARP_G:
    .dw DO_COLON
PFA_SHARP_G:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_HLD
    .dw XT_COUNT
    .dw XT_EXIT
