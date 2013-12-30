; ( -- x1 x2 ) (C: x1 x2 -- )
; Compiler
; compile a cell pair literal in colon definitions
VE_2LITERAL:
    .word 0x0008
    .ascii "2literal"
    .word VE_HEAD
    .set VE_HEAD, VE_2LITERAL
XT_2LITERAL:
    .word DO_COLON
PFA_2LITERAL:
    .word XT_SWAP
    .word XT_COMPILE
    .word XT_DOLITERAL
    .word XT_COMMA
    .word XT_COMPILE
    .word XT_DOLITERAL
    .word XT_COMMA
    
    .word XT_EXIT
