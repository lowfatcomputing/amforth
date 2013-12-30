; ( -- )
; Compiler
; finish colon defintion, compiles (exit) and returns to interpret state 
VE_SEMICOLON:
    .word 0x0001
    .byte 0x3b,0
    .word VE_HEAD
    .set VE_HEAD, VE_SEMICOLON
XT_SEMICOLON:
    .word DO_COLON
PFA_SEMICOLON:
    .word XT_COMPILE
    .word XT_EXIT
    .word XT_LBRACKET
    .word XT_REVEAL
    .word XT_EXIT
