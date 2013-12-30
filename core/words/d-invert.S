; ( d1 -- d2) 
; Arithmetics
; invert all bits in the double cell value
VE_DINVERT:
    .word 0xff07
    .string "dinvert"
    .word VE_HEAD
    .set VE_HEAD, VE_DINVERT
XT_DINVERT:
    .word PFA_DINVERT
PFA_DINVERT:
    ld temp0, Y+
    ld temp1, Y+
    com tosl
    com tosh
    com temp0
    com temp1
    st -Y, temp1
    st -Y, temp0
    jmp_ DO_NEXT
