; ( n1 n2 -- n1 n2 n1 ) Stack
; R( -- )
; stack manipulation
VE_OVER:
    .db $04, "over",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OVER
XT_OVER:
    .dw PFA_OVER
PFA_OVER:
    savetos
    ldd tosl, Y+2
    ldd tosh, Y+3

    rjmp DO_NEXT
