; ( -- addr ) Numeric IO
; R( -- )
; pointer to current write position in the Pictured Numeric Output buffer
VE_HLD:
    .dw $ff03
    .db "hld",0
    .dw VE_HEAD
    .set VE_HEAD = VE_HLD
XT_HLD:
    .dw PFA_DOVARIABLE
PFA_HLD:
    .dw here
    .set here = here + CELLSIZE
