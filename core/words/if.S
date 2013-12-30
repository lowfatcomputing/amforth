; ( f -- ) (C: -- orig )
; Compiler
; start conditional branch
VE_IF:
    .word 0x0002
    .ascii "if"
    .word VE_HEAD
    .set VE_HEAD, VE_IF
XT_IF:
    .word DO_COLON
PFA_IF:
    .word XT_COMPILE
    .word XT_DOCONDBRANCH
    .word XT_GMARK
    .word XT_EXIT
