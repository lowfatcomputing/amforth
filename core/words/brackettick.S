; ( -- xt ) (C: "<space>name" -- ) 
; Compiler
; what ' does in the interpreter mode, do in colon definitions
VE_BRACKETTICK:
    .word 0x0003
    .string "[']"
    .word VE_HEAD
    .set VE_HEAD, VE_BRACKETTICK
XT_BRACKETTICK:
    .word DO_COLON
PFA_BRACKETTICK:
    .word XT_COMPILE
    .word XT_DOLITERAL
    .word XT_TICK
    .word XT_COMMA
    .word XT_EXIT
