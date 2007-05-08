; ( d1 d2 -- flag ) Compare
; R( -- )
; compares two values (signed)
VE_DGREATER:
    .db $02, "d>",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DGREATER
XT_DGREATER:
    .dw PFA_DGREATER
PFA_DGREATER:
    ld temp0, Y+
    ld temp1, Y+

    ld temp2, Y+
    ld temp3, Y+
    ld temp4, Y+
    ld temp5, Y+

    cp temp2, tosl
    cpc temp3, tosh
    cpc temp4, temp0
    cpc temp5, temp1
    rjmp PFA_GREATERDONE
