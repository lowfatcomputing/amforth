; ( n1 n2 -- flag) Compare
; R( -- )
; compare two values
VE_NOTEQUAL:
    .db $02, "<>", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_NOTEQUAL
XT_NOTEQUAL:
    .dw PFA_NOTEQUAL
PFA_NOTEQUAL:
    ld temp2, Y+
    ld temp3, Y+
    cp tosl, temp2
    cpc tosh, temp3
    movw zl, zerol
    breq PFA_NOTEQUAL_EQUAL
    sbiw zl, 1
PFA_NOTEQUAL_EQUAL:
    movw tosl, zl
    rjmp DO_NEXT
