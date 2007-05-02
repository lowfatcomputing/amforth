; ( u1 u2 -- flasg) Compare
; R( -- )
; compare values u1 < u2 (unsigned)
VE_ULESS:
    .db $02, "u<",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ULESS
XT_ULESS:
    .dw PFA_ULESS
PFA_ULESS:
    ld temp2, Y+
    ld temp3, Y+
    cp tosl, temp2
    cpc tosh, temp3
    movw zl, zerol
    brlo PFA_ULESS1
    brbs 1, PFA_ULESS1
    sbiw zl, 1
PFA_ULESS1:
    movw tosl, zl
    rjmp DO_NEXT
