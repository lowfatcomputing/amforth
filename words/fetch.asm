; ( addr -- n )
; R( -- )
; read 1 cell from RAM (or IO or CPU register)
VE_FETCH:
    .db $01, "@"
    .dw VE_HEAD
    .set VE_HEAD = VE_FETCH
XT_FETCH:
    .dw PFA_FETCH
PFA_FETCH:
    ld zh, Y+
    ld zl, Y+
    ld temp0, z+
    ld temp1, z
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
