; ( --  ) (C: orig dest -- )
; Compiler
; continue execution at dest, resolve orig
VE_REPEAT:
    .word 0x0006
    .ascii "repeat"
    .word VE_HEAD
    .set VE_HEAD, VE_REPEAT
XT_REPEAT:
    .word DO_COLON
PFA_REPEAT:
    .word XT_AGAIN
    .word XT_GRESOLVE
    .word XT_EXIT
