; ( -- ) (C: cchar -- )
; Compiler
; create named entry in the dictionary, XT is the data field
VE_CODE:
    .word 0xff04
    .ascii "code"
    .word VE_HEAD
    .set VE_HEAD, VE_CODE
XT_CODE:
    .word DO_COLON
PFA_CODE:
    .word XT_DOCREATE
    .word XT_REVEAL
    .word XT_DP
    .word XT_1PLUS
    .word XT_COMMA
    .word XT_EXIT
