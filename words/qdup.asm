; ( n1 -- [ n1 n1 ] | 0)
VE_DUPQ:
    .db $04, "?dup",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DUPQ
XT_DUPQ:
    .dw PFA_DUPQ
PFA_DUPQ:
    ld temp0, Y+
    ld temp1, Y+
    mov temp2, temp0
    or temp2, temp1
    cp temp2, zerol
    breq PFA_DUPQ1
    st -Y, temp1
    st -Y, temp0
PFA_DUPQ1:
    st -Y, temp1
    st -Y, temp0
    rjmp DO_NEXT
