; (  -- n) Stackpointer
; R( -- )
; current return stack pointer address
VE_RP_FETCH:
    .db $03, "rp@"
    .dw VE_HEAD
    .set VE_HEAD = VE_RP_FETCH
XT_RP_FETCH:
    .dw PFA_RP_FETCH
PFA_RP_FETCH:
    savetos
    in tosl, SPL
    in tosh, SPH
    rjmp DO_NEXT
