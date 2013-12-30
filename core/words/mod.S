; ( n1 n2 -- n3) 
; Arithmetics
; divide n1 by n2 giving the remainder n3
VE_MOD:
    .word 0xff03
    .string "mod"
    .word VE_HEAD
    .set VE_HEAD, VE_MOD
XT_MOD:
    .word DO_COLON
PFA_MOD:
    .word XT_SLASHMOD
    .word XT_DROP
    .word XT_EXIT
