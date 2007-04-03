; ( n1 -- d1 )
; R( -- )
; extend (signed) single cell value to double cell
VE_S2D:
    .db $03, "s>d"
    .dw VE_HEAD
    .set VE_HEAD = VE_S2D
XT_S2D:
    .dw PFA_S2D
PFA_S2D:
    ld temp1, Y+
    ld temp0, Y+
    movw zl, zerol
    sbrc temp1,7
    sbiw zl, 1
    st -Y, temp0
    st -Y, temp1
    st -Y, zl
    st -Y, zh
    jmp DO_NEXT
