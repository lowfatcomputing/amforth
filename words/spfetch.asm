; (  -- n)
; R( -- )
; current data stack pointer
VE_SP_FETCH:
    .db $03, "sp@"
    .dw VE_HEAD
    .set VE_HEAD = VE_SP_FETCH
XT_SP_FETCH:
    .dw PFA_SP_FETCH
PFA_SP_FETCH:
    mov temp0, yl
    mov temp1, yh
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
