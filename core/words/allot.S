; ( n -- ) 
; System
; allocate or release memory in RAM
VE_ALLOT:
    .word 0xff05
    .string "allot"
    .word VE_HEAD
    .set VE_HEAD, VE_ALLOT
XT_ALLOT:
    .word DO_COLON
PFA_ALLOT:
    .word XT_HERE
    .word XT_PLUS
    .word XT_DOTO
    .word PFA_HERE
    .word XT_EXIT
