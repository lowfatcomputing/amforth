; ( -- addr )
; R( -- )
;VE_DOCONSTAN:
;    .db $0a, "(constant)", 0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOCONSTANT
XT_DOCONSTANT:
    .dw PFA_DOCONSTANT
PFA_DOCONSTANT:
    adiw wl, 1
    st -Y, wl
    st -Y, wh
    rjmp DO_NEXT
