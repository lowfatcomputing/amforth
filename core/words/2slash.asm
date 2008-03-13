; ( n1 -- n2 ) Arithmetics
; R( -- )
; arithmetic shift right
VE_2SLASH:
    .db $02, "2/", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_2SLASH
XT_2SLASH:
    .dw PFA_2SLASH
PFA_2SLASH:
    asr tosh
    ror tosl
    rjmp DO_NEXT
