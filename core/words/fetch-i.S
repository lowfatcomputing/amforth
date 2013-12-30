; ( f-addr -- n1 ) 
; Memory
; read 1 cell from flash
VE_FETCHI:
    .word 0xff02
    .ascii "@i"
    .word VE_HEAD
    .set VE_HEAD, VE_FETCHI
XT_FETCHI:
    .word PFA_FETCHI
PFA_FETCHI:
    movw ZL, tosl
    readflashcell tosl,tosh
    jmp_ DO_NEXT
