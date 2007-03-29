; ( limit counter -- )
; R( -- -- limit counter ) == loop-sys
; runtime of do
;VE_DODO:
;    .db 4, "(do)", 0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DODO
XT_DODO:
    .dw PFA_DODO
PFA_DODO:
    ld temp1, Y+
    ld temp0, Y+
    ld temp3, Y+
    ld temp2, Y+
    push temp2
    push temp3
    push temp0
    push temp1
    rjmp DO_NEXT
