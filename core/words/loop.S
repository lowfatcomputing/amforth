; (R: loop-sys -- ) (C: do-sys -- ) 
; Compiler
; compile (loop) and resolve the backward branch
VE_LOOP:
    .word 0x0004
    .ascii "loop"
    .word VE_HEAD
    .set VE_HEAD, VE_LOOP
XT_LOOP:
    .word DO_COLON
PFA_LOOP:
    .word XT_COMPILE
    .word XT_DOLOOP
    .word XT_LRESOLVE
    .word XT_GRESOLVE
    .word XT_EXIT
