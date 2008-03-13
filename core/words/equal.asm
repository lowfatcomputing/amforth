; ( n1 n2 -- flag ) Compare
; R( -- )
; compares two values
VE_EQUAL:
    .db $01, "="
    .dw VE_HEAD
    .set VE_HEAD = VE_EQUAL
XT_EQUAL:
    .dw PFA_EQUAL
PFA_EQUAL:
    ld temp2, Y+
    ld temp3, Y+
    cp tosl, temp2
    cpc tosh, temp3
PFA_EQUALDONE:
    movw zl, zerol
    brne PFA_EQUAL1
    sbiw zl, 1
PFA_EQUAL1:
    movw tosl, zl
    rjmp DO_NEXT
