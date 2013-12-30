; ( -- addr ) 
; System Value
; address of the next free data space (RAM) cell
VE_HERE:
    .word 0xff04
    .ascii "here"
    .word VE_HEAD
    .set VE_HEAD, VE_HERE
XT_HERE:
    .word PFA_DOVALUE1
PFA_HERE:
    .word EE_HERE
    .word XT_EVALUEFETCH
    .word XT_EVALUESTORE
