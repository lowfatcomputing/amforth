; ( -- addr )
; R( -- )
; runtime part of user
;VE_DOUSER:
;    .db $06, "(user)", 0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOUSER
XT_DOUSER:
    .dw PFA_DOUSER
PFA_DOUSER:
    savetos
    movw zl, wl
    adiw zl, 1
    readflashcell tosl,tosh
    add tosl, upl
    adc tosh, uph
    rjmp DO_NEXT
