; ( n -- ) (R: -- n)
; Stack
; move TOS to TOR
VE_TO_R:
    .word 0xff02
    .ascii ">r"
    .word VE_HEAD
    .set VE_HEAD, VE_TO_R
XT_TO_R:
    .word PFA_TO_R
PFA_TO_R:
    push tosh
    push tosl
    loadtos
    jmp_ DO_NEXT
