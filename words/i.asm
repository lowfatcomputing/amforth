; ( -- n )
; R( loop-sys -- loop-sys)
VE_I:
    .db 1, "i"
    .dw VE_HEAD
    .set VE_HEAD = VE_I
XT_I:
    .dw PFA_I
PFA_I:
    pop temp1
    pop temp0
    push temp0
    push temp1
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
