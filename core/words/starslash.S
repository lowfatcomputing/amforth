; (n1 n2 n3 -- n4) 
; Arithmetics
; signed multiply and division with double precision intermediate
VE_STARSLASH:
    .word 0xff02
    .ascii "*/"
    .word VE_HEAD
    .set VE_HEAD, VE_STARSLASH
XT_STARSLASH:
    .word DO_COLON
PFA_STARSLASH:
    .word XT_STARSLASHMOD
    .word XT_SWAP
    .word XT_DROP
    .word XT_EXIT
    
