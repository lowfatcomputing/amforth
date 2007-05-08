; ( n1 n2 -- flag ) Compare
; R( -- )
; compares two values (signed)
VE_GREATER:
    .db $01, ">"
    .dw VE_HEAD
    .set VE_HEAD = VE_GREATER
XT_GREATER:
    .dw PFA_GREATER
PFA_GREATER:

    ld temp2, Y+
    ld temp3, Y+
    cp temp2, tosl
    cpc temp3, tosh
PFA_GREATERDONE:
    movw zl, zerol
    brlt PFA_GREATER1
    brbs 1, PFA_GREATER1
    sbiw zl, 1
PFA_GREATER1:
    movw tosl, zl
    rjmp DO_NEXT
