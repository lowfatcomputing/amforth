; ( d1 -- ) Numeric IO
; R( -- )
; unsigned double cell output 
VE_UDOT:
    .db $02, "u.",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UDOT
XT_UDOT:
    .dw DO_COLON
PFA_UDOT:
    .dw XT_ZERO
    .dw XT_UDDOT
    .dw XT_EXIT
; : u.        ( us -- )    0 ud. ;