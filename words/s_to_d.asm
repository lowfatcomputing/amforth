; ( n1 -- d1 ) Conversion
; R( -- )
; extend (signed) single cell value to double cell
VE_S2D:
    .db $03, "s>d"
    .dw VE_HEAD
    .set VE_HEAD = VE_S2D
XT_S2D:
    .dw PFA_S2D
PFA_S2D:
    clr zl
    sbrc tosh,7
    ser zl
    st -Y, zl
    st -Y, zl
    jmp DO_NEXT
