; ( c a-addr -- ) 
; Memory
; store a single byte to RAM address
VE_CSTORE:
    .word 0xff02
    .ascii "c!"
    .word VE_HEAD
    .set VE_HEAD, VE_CSTORE
XT_CSTORE:
    .word PFA_CSTORE
PFA_CSTORE:
    movw ZL, tosl
    loadtos
    st Z, tosl
    loadtos
    jmp_ DO_NEXT
