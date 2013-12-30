; ( c<name> -- ) 
; Compiler
; creates a RAM based defer vector
VE_RDEFER:
    .word 0xff06
    .ascii "Rdefer"
    .word VE_HEAD
    .set VE_HEAD, VE_RDEFER
XT_RDEFER:
    .word DO_COLON
PFA_RDEFER:
    .word XT_DOCREATE
    .word XT_REVEAL

    .word XT_COMPILE
    .word PFA_DODEFER

    .word XT_HERE
    .word XT_COMMA
    .word XT_DOLITERAL
    .word 2
    .word XT_ALLOT

    .word XT_COMPILE
    .word XT_RDEFERFETCH
    .word XT_COMPILE
    .word XT_RDEFERSTORE
    .word XT_EXIT
