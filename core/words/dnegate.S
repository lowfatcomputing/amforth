; ( d1 -- d2 ) 
; Arithmetics
; double cell negation
VE_DNEGATE:
    .word 0xff07
    .string "dnegate"
    .word VE_HEAD
    .set VE_HEAD, VE_DNEGATE
XT_DNEGATE:
    .word DO_COLON
PFA_DNEGATE:
    .word XT_DINVERT
    .word XT_DOLITERAL
    .word 1
    .word XT_ZERO
    .word XT_DPLUS
    .word XT_EXIT
; : dnegate   ( ud1 -- ud2 ) dinvert 1. d+ ;
