; ( x1 x2 -- ) (R: -- x1 x2)
; Stack
; move DTOS to TOR
VE_2TO_R:
    .word 0xff03
    .string "2>r"
    .word VE_HEAD
    .set VE_HEAD, VE_2TO_R
XT_2TO_R:
    .word PFA_2TO_R
PFA_2TO_R:
    push tosh
    push tosl
    loadtos
    push tosh
    push tosl
    loadtos
    jmp_ DO_NEXT
