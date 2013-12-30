; ( -- n ) 
; Stack
; number of single-cell values contained in the data stack before n was placed on the stack.
VE_DEPTH:
    .word 0xff05
    .string "depth"
    .word VE_HEAD
    .set VE_HEAD, VE_DEPTH
XT_DEPTH:
    .word DO_COLON
PFA_DEPTH:
    .word XT_SP0
    .word XT_SP_FETCH
    .word XT_MINUS
    .word XT_2SLASH
    .word XT_1MINUS
    .word XT_EXIT
