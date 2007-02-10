; (n1 n2 -- n3)
; R( -- )
VE_MUL:
    .db $01, "*"
    .dw VE_HEAD
    .set VE_HEAD = VE_MUL
XT_MUL:
    .dw PFA_MUL
PFA_MUL:
    ld temp3, Y+
    ld temp2, Y+
    ld temp1, Y+
    ld temp0, Y+
    ; result: (temp3*temp1)* 65536 + (temp3*temp0 + temp1*temp2) * 256 + (temp0 * temp2)
    ; low bytes
    mul temp0,temp2
    movw zl, r0
    ; hi bytes
    mul temp2,temp1
    add zh, r0
    
    mul temp3, temp0
    add zh, r0

    ; put low cell on stack
    st -Y, zl
    st -Y, zh
    rjmp DO_NEXT
