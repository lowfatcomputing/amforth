; (  -- n)
; R:( -- )
VE_RP_FETCH:
    .db $03, "rp@"
    .dw VE_HEAD
    .set VE_HEAD = VE_RP_FETCH
XT_RP_FETCH:
    .dw PFA_RP_FETCH
PFA_RP_FETCH:
    in temp0, SPL
    in temp1, SPH
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
