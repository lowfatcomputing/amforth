; ( d1 d2 -- flasg) Compare
; R( -- )
; compare two values
VE_DLESS:
    .db $02, "d<",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DLESS
XT_DLESS:
    .dw PFA_DLESS
PFA_DLESS:
    ld temp0, Y+
    ld temp1, Y+

    ld temp2, Y+
    ld temp3, Y+
    ld temp4, Y+
    ld temp5, Y+

    cp tosl, temp2
    cpc tosh, temp3
    cpc temp0, temp4
    cpc temp1, temp5
    rjmp PFA_LESSDONE