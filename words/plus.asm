; ( n1 n2 -- n3) Arithmetics
; R( -- )
; addition
VE_PLUS:
    .db $01, "+"
    .dw VE_HEAD
    .set VE_HEAD = VE_PLUS
XT_PLUS:
    .dw PFA_PLUS
PFA_PLUS:
    ld temp0, Y+
    ld temp1, Y+
    add tosl, temp0
    adc tosh, temp1
    rjmp DO_NEXT
