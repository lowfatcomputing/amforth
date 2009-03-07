; ( n1 -- n2 ) Arithmetics
; R( -- )
; optimized increment
VE_1PLUS:
    .dw $ff02
    .db "1+"
    .dw VE_HEAD
    .set VE_HEAD = VE_1PLUS
XT_1PLUS:
    .dw PFA_1PLUS
PFA_1PLUS:
    adiw tosl,1
    rjmp DO_NEXT
