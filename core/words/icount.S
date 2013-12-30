; ( addr -- addr+1 n )  
; Tools
; get count information out of a counted string in flash
VE_ICOUNT:
    .word 0xff06
    .ascii "icount"
    .word VE_HEAD
    .set VE_HEAD, VE_ICOUNT
XT_ICOUNT:
    .word DO_COLON
PFA_ICOUNT:
    .word XT_DUP
    .word XT_1PLUS
    .word XT_SWAP
    .word XT_FETCHI
    .word XT_EXIT
