; ( -- addr )
; R( -- )
; puts content of parameter field (1 cell) to TOS
;VE_DOVARIABLE:
;    .db $0a, "(variable)", 0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOVARIABLE
XT_DOVARIABLE:
    .dw PFA_DOVARIABLE
PFA_DOVARIABLE:
    savetos
    movw zl, wl
    adiw zl,1
    readflashcell tosl,tosh
    rjmp DO_NEXT
