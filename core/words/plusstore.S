; ( n a-addr -- ) 
; Arithmetics
; add n to content of RAM address a-addr
VE_PLUSSTORE:
    .word 0xff02
    .ascii "+!"
    .word VE_HEAD
    .set VE_HEAD, VE_PLUSSTORE
XT_PLUSSTORE:
    .word PFA_PLUSSTORE
PFA_PLUSSTORE:
    movw ZL, tosl
    loadtos
    ldd temp2, Z+0
    ldd temp3, Z+1
    add tosl, temp2
    adc tosh, temp3
    std Z+0, tosl
    std Z+1, tosh
    loadtos
    jmp_ DO_NEXT
