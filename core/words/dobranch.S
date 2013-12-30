; ( -- ) 
; System
; runtime of branch
;VE_DOBRANCH:
;    .word 0xff08
;    .ascii "(branch)"
;    .word VE_HEAD
;    .set VE_HEAD, VE_DOBRANCH
XT_DOBRANCH:
    .word PFA_DOBRANCH
PFA_DOBRANCH:
    movw ZL, XL
    readflashcell XL,XH
    jmp_ DO_NEXT
