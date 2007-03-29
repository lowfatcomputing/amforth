; ( -- n)
; ( R: n -- n )
; fetch content of TOR
VE_R_FETCH:
    .db $02, "r@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_R_FETCH
XT_R_FETCH:
    .dw PFA_R_FETCH
PFA_R_FETCH:
    pop temp1
    pop temp0
    st -Y, temp0
    st -Y, temp1
    push temp0
    push temp1
    rjmp DO_NEXT
