; ( cchar -- ) 
; Compiler
; create a dictionary entry for a variable and allocate 1 cell RAM
VE_VARIABLE:
    .word 0xff08
    .ascii "variable"
    .word VE_HEAD
    .set VE_HEAD, VE_VARIABLE
XT_VARIABLE:
    .word DO_COLON
PFA_VARIABLE:
    .word XT_HERE
    .word XT_CONSTANT
    .word XT_DOLITERAL
    .word 2
    .word XT_ALLOT
    .word XT_EXIT
