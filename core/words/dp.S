; ( -- f-addr ) 
; System Value
; address of the next free dictionary cell
VE_DP:
    .word 0xff02
    .ascii "dp"
    .word VE_HEAD
    .set VE_HEAD, VE_DP
XT_DP:
    .word PFA_DOVALUE1
PFA_DP:
    .word EE_DP
    .word XT_EVALUEFETCH
    .word XT_EVALUESTORE
