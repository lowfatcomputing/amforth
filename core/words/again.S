; ( -- ) (C: dest -- ) 
; Compiler
; compile a jump back to dest
VE_AGAIN:
    .word 0x0005
    .string "again"
    .word VE_HEAD
    .set VE_HEAD, VE_AGAIN
XT_AGAIN:
    .word DO_COLON
PFA_AGAIN:
    .word XT_COMPILE
    .word XT_DOBRANCH
    .word XT_LRESOLVE
    .word XT_EXIT
