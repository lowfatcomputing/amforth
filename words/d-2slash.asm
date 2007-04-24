; ( d1 -- d2 ) Arithmetics
; R( -- )
; shift a double cell value right
VE_D2SLASH:
    .db $03, "d2/"
    .dw VE_HEAD
    .set VE_HEAD = VE_D2SLASH
XT_D2SLASH:
    .dw PFA_D2SLASH
PFA_D2SLASH:
    ld temp0, Y+
    ld temp1, Y+
    asr temp1
    ror temp0
    ror tosh
    ror tosl
    st -Y, temp1
    st -Y, temp0
    jmp DO_NEXT
