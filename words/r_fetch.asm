; ( -- n) Stack
; R( n -- n )
; fetch content of TOR
VE_R_FETCH:
    .db $02, "r@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_R_FETCH
XT_R_FETCH:
    .dw PFA_R_FETCH
PFA_R_FETCH:
    savetos
    pop tosl
    pop tosh
    push tosh
    push tosl
    rjmp DO_NEXT
