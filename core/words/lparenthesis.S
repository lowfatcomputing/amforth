; ( "ccc<paren>" -- ) 
; Compiler
; skip everything up to the closing bracket on the same line
VE_LPARENTHESIS:
    .word 0x0001
    .string "("
    .word VE_HEAD
    .set VE_HEAD, VE_LPARENTHESIS
XT_LPARENTHESIS:
    .word DO_COLON
PFA_LPARENTHESIS:
    .word XT_DOLITERAL
    .word 0x29
    .word XT_PARSE
    .word XT_2DROP
    .word XT_EXIT
