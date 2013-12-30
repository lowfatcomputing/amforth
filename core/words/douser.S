; ( -- addr )
; System
; runtime part of user
;VE_DOUSER:
;    .word 0xff06
;    .ascii "(user)"
;    .word VE_HEAD
;    .set VE_HEAD, VE_DOUSER
XT_DOUSER:
    .word PFA_DOUSER
PFA_DOUSER:
    savetos
    ;;movw ZL, WL ;; removed
    movw ZL, r24 ;; added
    adiw ZL, 1
    readflashcell tosl,tosh
    add tosl, upl
    adc tosh, uph
    jmp_ DO_NEXT
