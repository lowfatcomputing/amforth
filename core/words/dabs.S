; ( d -- ud ) 
; Arithmetics
; double cell absolute value
VE_DABS:
    .word 0xff04
    .ascii "dabs"
    .word VE_HEAD
    .set VE_HEAD, VE_DABS
XT_DABS:
    .word DO_COLON
PFA_DABS:
    .word XT_DUP
    .word XT_LESSZERO
    .word XT_DOCONDBRANCH
    .word PFA_DABS1
    .word XT_DNEGATE
PFA_DABS1:
    .word XT_EXIT
; : dabs      ( ud1 -- +d2 ) dup 0< if dnegate then ;
