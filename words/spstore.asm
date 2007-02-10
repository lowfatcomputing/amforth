; ( addr -- ) stackpointer changed to addr
; R( -- )
VE_SP_STORE:
    .db $03, "sp!"
    .dw VE_HEAD
    .set VE_HEAD = VE_SP_STORE
XT_SP_STORE:
    .dw PFA_SP_STORE
PFA_SP_STORE:
    ld temp1, Y+
    ld temp0, Y+
    in temp2, SREG
    cli
    mov yl, temp0
    mov yh, temp1
    out SREG, temp2
    rjmp DO_NEXT
