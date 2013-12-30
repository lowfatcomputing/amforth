; ( -- n ) (C: n -- )
; Compiler
; compile a literal in colon defintions
VE_LITERAL:
    .word 0x0007
    .string "literal"
    .word VE_HEAD
    .set VE_HEAD, VE_LITERAL
XT_LITERAL:
    .word DO_COLON
PFA_LITERAL:
    .word XT_COMPILE
    .word XT_DOLITERAL
    .word XT_COMMA
    .word XT_EXIT
