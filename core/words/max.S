; ( n1 n2 -- n1|n2 ) 
; Compare
; compare two values, leave the bigger one
VE_MAX:
    .word 0xff03
    .string "max"
    .word VE_HEAD
    .set VE_HEAD, VE_MAX
XT_MAX:
    .word DO_COLON
PFA_MAX:
    .word XT_2DUP
    .word XT_LESS
    .word XT_DOCONDBRANCH
    .word PFA_MAX1
    .word XT_SWAP
PFA_MAX1:
    .word XT_DROP
    .word XT_EXIT
