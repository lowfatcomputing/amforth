; ( n -- ) (R: loop-sys -- loop-sys| ) (C: do-sys -- )
; Compiler
; compile (+loop) and resolve branches
VE_PLUSLOOP:
    .word 0x0005
    .string "+loop"
    .word VE_HEAD
    .set VE_HEAD, VE_PLUSLOOP
XT_PLUSLOOP:
    .word DO_COLON
PFA_PLUSLOOP:
    .word XT_COMPILE
    .word XT_DOPLUSLOOP
    .word XT_LRESOLVE
    .word XT_GRESOLVE
    .word XT_EXIT
