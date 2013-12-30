; ( n1 n2 -- n1|n2 ) 
; Compare
; compare two values leave the smaller one
VE_MIN:
    .word 0xff03
    .string "min"
    .word VE_HEAD
    .set VE_HEAD, VE_MIN
XT_MIN:
    .word DO_COLON
PFA_MIN:
    .word XT_2DUP
    .word XT_GREATER
    .word XT_DOCONDBRANCH
    .word PFA_MIN1
    .word XT_SWAP
PFA_MIN1:
    .word XT_DROP
    .word XT_EXIT
