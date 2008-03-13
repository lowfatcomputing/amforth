; ( u1 u2 -- flag ) Compare
; R( -- )
; compares u1 > u2 (unsigned)
VE_UGREATER:
    .db $02, "u>",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UGREATER
XT_UGREATER:
    .dw PFA_UGREATER
PFA_UGREATER:
    ld temp2, Y+
    ld temp3, Y+
    cp temp2, tosl
    cpc temp3, tosh
    movw zl, zerol
    brlo PFA_UGREATER1
    brbs 1, PFA_UGREATER1
    sbiw zl, 1
PFA_UGREATER1:
    movw tosl, zl
    rjmp DO_NEXT
