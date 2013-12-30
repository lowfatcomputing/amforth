; (  -- n) 
; Stack
; current return stack pointer address
VE_RP_FETCH:
    .word 0xff03
    .string "rp@"
    .word VE_HEAD
    .set VE_HEAD, VE_RP_FETCH
XT_RP_FETCH:
    .word PFA_RP_FETCH
PFA_RP_FETCH:
    savetos
    in tosl, _SFR_IO_ADDR(SPL)
    in tosh, _SFR_IO_ADDR(SPH)
    jmp_ DO_NEXT
