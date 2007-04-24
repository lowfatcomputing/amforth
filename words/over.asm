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
    movw temp0, tosl
    ldd tosl, Y+0
    ldd tosh, Y+1
    st -Y, temp1
    st -Y, temp0

    rjmp DO_NEXT
