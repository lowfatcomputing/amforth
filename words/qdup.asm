; ( n1 -- [ n1 n1 ] | 0)
; R( -- )
; duplicate TOS if non-zero
VE_QDUP:
    .db $04, "?dup",0
    .dw VE_HEAD
    .set VE_HEAD = VE_QDUP
XT_QDUP:
    .dw PFA_QDUP
PFA_QDUP:
    ld temp0, Y+
    ld temp1, Y+
    mov temp2, temp0
    or temp2, temp1
    cp temp2, zerol
    breq PFA_QDUP1
    st -Y, temp1
    st -Y, temp0
PFA_QDUP1:
    st -Y, temp1
    st -Y, temp0
    rjmp DO_NEXT
