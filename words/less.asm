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
    cp temp2, tosl
    cpc temp3, tosh
PFA_LESSDONE:
    movw zl, zerol
    brge PFA_LESS1
    sbiw zl, 1
PFA_LESS1:
    movw tosl, zl
    rjmp DO_NEXT
