; ( n1 -- n2 )
; R( -- )
VE_2STAR:
    .db $02, "2*", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_2STAR
XT_2STAR:
    .dw PFA_2STAR
PFA_2STAR:
    ld temp1, Y+
    ld temp0, Y+
    lsl temp0
    rol temp1
    ; put low cell on stack
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
