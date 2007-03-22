; ( -- n )
; R( loop-sys1 loop-sys2 -- loop-sys1 loop-sys2)
VE_J:
    .db 1, "j"
    .dw VE_HEAD
    .set VE_HEAD = VE_J
XT_J:
    .dw PFA_J
PFA_J:
    pop temp1
    pop temp0
    pop temp3
    pop temp2
    pop temp5
    pop temp4
    
    push temp4
    push temp5
    push temp2
    push temp3
    push temp0
    push temp1
    st -Y, temp4
    st -Y, temp5
    rjmp DO_NEXT
