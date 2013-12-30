; ( -- ) 
; Compiler
; set immediate flag for the most recent word definition
VE_IMMEDIATE:
    .word 0xff09
    .string "immediate"
    .word VE_HEAD
    .set VE_HEAD, VE_IMMEDIATE
XT_IMMEDIATE:
    .word DO_COLON
PFA_IMMEDIATE:
    .word XT_GET_CURRENT
    .word XT_FETCHE
    .word XT_DUP
    .word XT_FETCHI
    .word XT_DOLITERAL
    .word 0x7fff
    .word XT_AND
    .word XT_SWAP
    .word XT_STOREI
    .word XT_EXIT
