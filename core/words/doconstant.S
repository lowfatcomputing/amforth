; ( -- addr )
; System
; place data field address on TOS
;VE_DOCONSTANT:
;    .word 0xff0a
;    .ascii "(constant)"
;    .word VE_HEAD
;    .set VE_HEAD, VE_DOCONSTANT
XT_DOCONSTANT:
    .word PFA_DOCONSTANT
PFA_DOCONSTANT:
    savetos
    movw tosl, wl
    adiw tosl, 1
    jmp_ DO_NEXT
