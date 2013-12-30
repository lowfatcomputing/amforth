; ( f -- ) (C: dest -- orig dest ) 
; Compiler
; at runtime skip until repeat if non-true
VE_WHILE:
    .word 0x0005
    .string "while"
    .word VE_HEAD
    .set VE_HEAD, VE_WHILE
XT_WHILE:
    .word DO_COLON
PFA_WHILE:
    .word XT_COMPILE
    .word XT_DOCONDBRANCH
    .word XT_GMARK
    .word XT_SWAP
    .word XT_EXIT
