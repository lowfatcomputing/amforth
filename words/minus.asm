; ( n1 n2 -- n3 ) Arithmetics
; R( -- )
; subtract 
VE_MINUS:
    .db $01, "-"
    .dw VE_HEAD
    .set VE_HEAD = VE_MINUS
XT_MINUS:
    .dw PFA_MINUS
PFA_MINUS:
    ld temp0, Y+
    ld temp1, Y+
    sub temp0, tosl
    sbc temp1, tosh
    movw tosl, temp0
    rjmp DO_NEXT
