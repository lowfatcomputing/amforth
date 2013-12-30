; ( d1 -- d2 ) 
; Arithmetics
; shift a double cell left
VE_D2STAR:
    .word 0xff03
    .string "d2*"
    .word VE_HEAD
    .set VE_HEAD, VE_D2STAR
XT_D2STAR:
    .word PFA_D2STAR
PFA_D2STAR:
    ld temp0, Y+
    ld temp1, Y+
    lsl temp0
    rol temp1
    rol tosl
    rol tosh
    st -Y, temp1
    st -Y, temp0
    jmp_ DO_NEXT
