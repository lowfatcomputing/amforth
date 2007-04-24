; ( n1 -- n2 ) Arithmetics
; R( -- )
; optimized increment
VE_1PLUS:
    .db $02, "1+",0
    .dw VE_HEAD
    .set VE_HEAD = VE_1PLUS
XT_1PLUS:
    .dw PFA_1PLUS
PFA_1PLUS:
    movw zl, tosl
    adiw zl,1
    movw tosl, zl
    rjmp DO_NEXT
