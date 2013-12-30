; ( n1 n2 -- flag) 
; Compare
; true if n1 is not equal to n2
VE_NOTEQUAL:
    .word 0xff02
    .ascii "<>"
    .word VE_HEAD
    .set VE_HEAD, VE_NOTEQUAL
XT_NOTEQUAL:
    .word PFA_NOTEQUAL
PFA_NOTEQUAL:
    ld temp2, Y+
    ld temp3, Y+
    cp tosl, temp2
    cpc tosh, temp3
    breq PFA_ZERO1
    rjmp PFA_TRUE1
