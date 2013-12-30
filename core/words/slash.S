; ( n1 n2 -- n3) 
; Arithmetics
; divide n1 by n2. giving the quotient
VE_SLASH:
    .word 0xff01
    .string "/"
    .word VE_HEAD
    .set VE_HEAD, VE_SLASH
XT_SLASH:
    .word DO_COLON
PFA_SLASH:
    .word XT_SLASHMOD
    .word XT_SWAP
    .word XT_DROP
    .word XT_EXIT

