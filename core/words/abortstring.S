; ( i*x x1 -- | i*x ) (R: j*y -- | j*y ) (C: "ccc<quote>" -- )
; Exceptions
; check flag. If true display the parsed text and throw exception -2 
VE_ABORTSTRING:
    .word 0x0006
    .ascii "abort"
    .byte 0x22
    .word VE_HEAD
    .set VE_HEAD, VE_ABORTSTRING
XT_ABORTSTRING:
    .word DO_COLON
PFA_ABORTSTRING:
    ; postpone if
    .word XT_COMPILE
    .word XT_DOCONDBRANCH
    .word XT_DP
    .word XT_COMPILE
    .word -1
    
    .word XT_DOTSTRING
    
    .word XT_COMPILE
    .word XT_DOLITERAL
    
    .word XT_COMPILE
    .word -2
    .word XT_COMPILE
    .word XT_THROW
    ; then
    .word XT_DP
    .word XT_SWAP
    .word XT_STOREI
    .word XT_EXIT
