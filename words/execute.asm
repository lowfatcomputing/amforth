; ( xt -- ) System
; R( -- )
; execute XT
VE_EXECUTE:
    .db $07, "execute"
    .dw VE_HEAD
    .set VE_HEAD = VE_EXECUTE
XT_EXECUTE:
    .dw PFA_EXECUTE
PFA_EXECUTE:
    movw wl, tosl
    loadtos
    rjmp DO_EXECUTE
