; ( f -- )
; R( -- )
;VE_DOCONDBRANCH:
;    .db $09, "(?branch)"
;    .dw  VE_HEAD
;    .set VE_HEAD = VE_DOCONDBRANCH
XT_DOCONDBRANCH:
    .dw PFA_DOCONDBRANCH
PFA_DOCONDBRANCH:
    ld temp1, Y+
    ld temp0, Y+
    or temp0, temp1
    brbs 1, PFA_DOBRANCH ; 1 is z flag; if tos is zero (false), do the branch
    adiw xl, 1
    rjmp DO_NEXT
