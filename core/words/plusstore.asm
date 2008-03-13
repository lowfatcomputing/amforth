; ( n addr -- ) Arithmetics
; R( -- )
; add value to content of RAM address
VE_PLUSSTORE:
    .db $02, "+!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PLUSSTORE
XT_PLUSSTORE:
    .dw PFA_PLUSSTORE
PFA_PLUSSTORE:
    movw zl, tosl
    loadtos
    ldd temp2, Z+0
    ldd temp3, Z+1
    add tosl, temp2
    adc tosh, temp3
    std Z+0, tosl
    std Z+1, tosh
    loadtos
    rjmp DO_NEXT
