; ( limit counter -- )
; R( -- limit counter )
; runtime of do
;VE_DODO:
;    .db 4, "(do)", 0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DODO
XT_DOQDO:
    .dw PFA_DOQDO
PFA_DOQDO:
    ; put the content of the next flash cell on return stack
    ; it is the address of the instruction _after_ the (+)loop
    movw zl, xl
    lsl  zl
    rol  zh
    lpm  temp0, Z+
    lpm  temp1, Z+
    adiw xl, 1    ; adjust to NEXT+1 = jump over <mark (for leave)

    ld temp2, Y+
    ld temp3, Y+
    ; now check for equality
    cp tosl, temp2
    cpc tosh, temp3
    brne PFA_DODO1
    ; both values are the same -> skip to loop
    movw xl, temp0
    rjmp DO_NEXT
