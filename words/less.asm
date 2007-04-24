; ( n1 n2 -- flasg) Compare
; R( -- )
; compare two values
VE_LESS:
    .db $01, "<"
    .dw VE_HEAD
    .set VE_HEAD = VE_LESS
XT_LESS:
    .dw PFA_LESS
PFA_LESS:
    ld temp2, Y+
    ld temp3, Y+
    cp tosl, temp2
    cpc tosh, temp3
    movw zl, zerol
    brlt PFA_LESS1
    brbs 1, PFA_LESS1
    sbiw zl, 1
PFA_LESS1:
    movw tosl, zl
    rjmp DO_NEXT
