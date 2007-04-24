; ( n1 -- n2 ) Arithmetics
; R( -- )
; optimized decrement (CORE)
VE_1MINUS:
    .db $02, "1-",0
    .dw VE_HEAD
    .set VE_HEAD = VE_1MINUS
XT_1MINUS:
    .dw PFA_1MINUS
PFA_1MINUS:
    movw zl, tosl
    sbiw zl, 1
    movw tosl, zl
    rjmp DO_NEXT
