; ( f -- ) (C: -- orig )
; Compiler
; do a unconditional branch
VE_AHEAD:
    .word 0x0005
    .string "ahead"
    .word VE_HEAD
    .set VE_HEAD, VE_AHEAD
XT_AHEAD:
    .word DO_COLON
PFA_AHEAD:
    .word XT_COMPILE
    .word XT_DOBRANCH
    .word XT_GMARK
    .word XT_EXIT
