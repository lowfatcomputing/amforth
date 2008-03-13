; ( n1 n2 -- n3) Arithmetics
; R( -- )
; logical shift left 
VE_LSHIFT:
    .db $06, "lshift",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LSHIFT
XT_LSHIFT:
    .dw PFA_LSHIFT
PFA_LSHIFT:
    movw zl, tosl
    loadtos
PFA_LSHIFT1:
    sbiw zl, 1
    brmi PFA_LSHIFT2
    lsl tosl
    rol tosh
    rjmp PFA_LSHIFT1
PFA_LSHIFT2:
    rjmp DO_NEXT

