; ( n1|u1 n2|u2 -- n3|u3 ) 
; Arithmetics
; subtract n2 from n1
VE_MINUS:
    .word 0xff01
    .string "-"
    .word VE_HEAD
    .set VE_HEAD, VE_MINUS
XT_MINUS:
    .word PFA_MINUS
PFA_MINUS:
    ld temp0, Y+
    ld temp1, Y+
    sub temp0, tosl
    sbc temp1, tosh
    movw tosl, temp0
    jmp_ DO_NEXT
