; ( n1 -- flag )
; Compare
; true if n1 is greater than 0
VE_GREATERZERO:
    .word 0xff02
    .ascii "0>"
    .word VE_HEAD
    .set VE_HEAD, VE_GREATERZERO
XT_GREATERZERO:
    .word PFA_GREATERZERO
PFA_GREATERZERO:
    cp tosl, zerol
    cpc tosh, zeroh
    brlt PFA_ZERO1
    brbs 1, PFA_ZERO1
    rjmp PFA_TRUE1
