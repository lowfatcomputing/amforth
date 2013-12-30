; ( -- ) (C: "<spaces>name" -- )
; Compiler
; create a named entry in the dictionary, XT is DO_COLON
VE_COLON:
    .word 0xff01
    .string ":"
    .word VE_HEAD
    .set VE_HEAD, VE_COLON
XT_COLON:
    .word DO_COLON
PFA_COLON:
    .word XT_DOCREATE
    .word XT_DP
    .word XT_LATEST
    .word XT_STORE
    .word XT_COMPILE
    .word DO_COLON
    .word XT_RBRACKET
    .word XT_EXIT
