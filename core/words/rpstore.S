; ( addr  -- ) (R: -- x*y)
; Stack
; set return stack pointer
VE_RP_STORE:
    .word 0xff03
    .string "rp!"
    .word VE_HEAD
    .set VE_HEAD, VE_RP_STORE
XT_RP_STORE:
    .word PFA_RP_STORE
PFA_RP_STORE:
    in temp2, _SFR_IO_ADDR(SREG)
    cli
    out _SFR_IO_ADDR(SPL), tosl
    out _SFR_IO_ADDR(SPH), tosh
    out _SFR_IO_ADDR(SREG), temp2
    loadtos
    jmp_ DO_NEXT
