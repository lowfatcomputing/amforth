; ( n  -- )
; R: stack pointer changed
VE_RP_STORE:
    .db $03, "rp!"
    .dw VE_HEAD
    .set VE_HEAD = VE_RP_STORE
XT_RP_STORE:
    .dw PFA_RP_STORE
PFA_RP_STORE:
    ld temp1, Y+
    ld temp0, Y+
    in temp2, SREG
    cli
    out SPL, temp0
    out SPH, temp1
    out SREG, temp2
    rjmp DO_NEXT
