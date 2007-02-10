; ( -- addr )
; R( -- )
VE_UP:
    .db $02, "up",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UP
XT_UP:
    .dw PFA_UP
PFA_UP:
    st -Y, upl
    st -Y, uph
    rjmp DO_NEXT
