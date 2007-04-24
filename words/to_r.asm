; ( n -- ) Stack
; R( -- n)
; move TOS to TOR
VE_TO_R:
    .db $02, ">r", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_TO_R
XT_TO_R:
    .dw PFA_TO_R
PFA_TO_R:
    push tosh
    push tosl
    loadtos
    rjmp DO_NEXT
