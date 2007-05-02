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
    ld temp2, Y+
    ld temp3, Y+
    push temp3
    push temp2
    push tosh
    push tosl
    loadtos
    rjmp DO_NEXT
