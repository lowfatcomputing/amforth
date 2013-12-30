; ( d -- flag )
; Compare
; compares if a double double cell number is greater 0
VE_DGREATERZERO:
    .word 0xff03
    .string "d0>"
    .word VE_HEAD
    .set VE_HEAD, VE_DGREATERZERO
XT_DGREATERZERO:
    .word PFA_DGREATERZERO
PFA_DGREATERZERO:
    cp tosl, zerol
    cpc tosh, zeroh
    loadtos
    cpc tosl, zerol
    cpc tosh, zeroh
    brlt PFA_ZERO1
    brbs 1, PFA_ZERO1
    rjmp PFA_TRUE1
