; ( -- addr )
; R( -- )
;VE_DOVARIABLE:
;    .db $0a, "(variable)", 0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOVARIABLE
XT_DOCONSTANT:
    .dw PFA_DOCONSTANT
PFA_DOCONSTANT:
    st -Y, wl
    st -Y, wh
    rjmp DO_NEXT
