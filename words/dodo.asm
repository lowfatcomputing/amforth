; ( limit counter -- )
; R( -- limit counter )
; runtime of do
;VE_DODO:
;    .db 4, "(do)", 0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DODO
XT_DODO:
    .dw PFA_DODO
PFA_DODO:
    ; put the content of the next flash cell on return stack
    ; it is the address of the instruction _after_ the (+)loop
    movw zl, xl
    lsl  zl
    rol  zh
    lpm  temp0, Z+
    lpm  temp1, Z+
    push temp1
    push temp0
    adiw xl, 1    ; adjust to NEXT+1 = jump over <mark (for leave) 
    
    ld temp2, Y+
    ld temp3, Y+
    push temp3
    push temp2
    push tosh
    push tosl
    loadtos
    rjmp DO_NEXT
