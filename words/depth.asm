; ( -- n )
VE_DEPTH:
    .db $05, "depth"
    .dw VE_HEAD
    .set VE_HEAD = VE_DEPTH
XT_DEPTH:
    .dw PFA_DEPTH
PFA_DEPTH:
    movw zl, yl
    ldi temp0, low(stackstart)
    ldi temp1, high(stackstart)
    sub temp0, zl
    sbc temp1, zh
    asr temp1
    ror temp0 ; we want cells not bytes
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT

