; ( x1 x2 x3 x4 -- x3 x4 x1 x2 ) 
; Stack
; Exchange the two top cell pairs
VE_2SWAP:
    .word 0xff05
    .string "2swap"
    .word VE_HEAD
    .set VE_HEAD, VE_2SWAP
XT_2SWAP:
    .word DO_COLON
PFA_2SWAP:
    .word XT_ROT
    .word XT_TO_R
    .word XT_ROT
    .word XT_R_FROM
    .word XT_EXIT
