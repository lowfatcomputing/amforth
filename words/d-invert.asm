; ( d1 -- d2) Arithmetics
; R( -- )
; flip all bits in the double cell value
VE_DINVERT:
    .db $07, "dinvert"
    .dw VE_HEAD
    .set VE_HEAD = VE_DINVERT
XT_DINVERT:
    .dw PFA_DINVERT
PFA_DINVERT:
    ld temp0, Y+
    ld temp1, Y+
    com tosl
    com tosh
    com temp0
    com temp1
    st -Y, temp1
    st -Y, temp0
    jmp DO_NEXT
