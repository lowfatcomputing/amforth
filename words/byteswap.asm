; ( n1 -- n2 ) Arithmetics
; R( -- )
; swap the bytes of the TOS
VE_BYTESWAP:
    .db $02, "><",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BYTESWAP
XT_BYTESWAP:
    .dw PFA_BYTESWAP
PFA_BYTESWAP:
    mov temp0, tosh
    mov tosh, tosl
    mov tosl, temp0
    rjmp DO_NEXT
