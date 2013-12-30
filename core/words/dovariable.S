; ( -- addr )
; System
; puts content of parameter field (1 cell) to TOS
;VE_DOVARIABLE:
;    .word 0xff0a
;    .ascii "(variable)"
;    .word VE_HEAD
;    .set VE_HEAD, VE_DOVARIABLE
XT_DOVARIABLE:
    .word PFA_DOVARIABLE
PFA_DOVARIABLE:
    savetos
    movw ZL, r24
    adiw ZL,1
    readflashcell tosl,tosh
    jmp_ DO_NEXT
