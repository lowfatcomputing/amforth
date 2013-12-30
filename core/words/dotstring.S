; ( -- ) (C: "ccc<quote>" -- )
; Compiler
; compiles string into dictionary to be printed at runtime
VE_DOTSTRING:
    .word 0x0002
    .ascii "."
    .byte 0x22
    .word VE_HEAD
    .set VE_HEAD, VE_DOTSTRING
XT_DOTSTRING:
    .word DO_COLON
PFA_DOTSTRING:
    .word XT_SQUOTE
    .word XT_COMPILE
    .word XT_ITYPE
    .word XT_EXIT

