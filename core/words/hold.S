; ( c -- ) 
; Numeric IO
; prepend character to pictured numeric output buffer
VE_HOLD:
    .word 0xff04
    .ascii "hold"
    .word VE_HEAD
    .set VE_HEAD, VE_HOLD
XT_HOLD:
    .word DO_COLON
PFA_HOLD:
    .word XT_HLD
    .word XT_DUP
    .word XT_FETCH
    .word XT_1MINUS
    .word XT_DUP
    .word XT_TO_R
    .word XT_SWAP
    .word XT_STORE
    .word XT_R_FROM
    .word XT_CSTORE
    .word XT_EXIT
