; ( "ccc<eol>" -- ) 
; Compiler
; everything up to the end of the current line is a comment
VE_BACKSLASH:
    .word 0x0001
    .string "\\"
    .word VE_HEAD
    .set VE_HEAD, VE_BACKSLASH
XT_BACKSLASH:
    .word DO_COLON
PFA_BACKSLASH:
    .word XT_SOURCE
    .word XT_SWAP
    .word XT_DROP
    .word XT_G_IN
    .word XT_STORE
    .word XT_EXIT
