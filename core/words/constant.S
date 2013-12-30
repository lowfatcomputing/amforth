; ( -- x ) (C: x "<spaces>name" -- )
; Compiler
; create a constant in the dictionary
VE_CONSTANT:
    .word 0xff08
    .ascii "constant"
    .word VE_HEAD
    .set VE_HEAD, VE_CONSTANT
XT_CONSTANT:
    .word DO_COLON
PFA_CONSTANT:
    .word XT_DOCREATE
    .word XT_REVEAL
    .word XT_COMPILE
    .word PFA_DOVARIABLE
    .word XT_COMMA
    .word XT_EXIT

