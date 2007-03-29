; ( n1 n2 -- flag)
; R( -- )
; compare two values
VE_NOTEQUAL:
    .db $02, "<>", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_NOTEQUAL
XT_NOTEQUAL:
    .dw PFA_NOTEQUAL
PFA_NOTEQUAL:
    ld temp1, Y+
    ld temp0, Y+
    ld temp3, Y+
    ld temp2, Y+
    cp temp0, temp2
    cpc temp1, temp3
    movw zl, zerol
    breq PFA_NOTEQUAL_EQUAL
    sbiw zl, 1
PFA_NOTEQUAL_EQUAL:
    st -Y, zl
    st -Y, zh
    rjmp DO_NEXT
