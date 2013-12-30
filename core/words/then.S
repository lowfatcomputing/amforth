; ( -- ) (C: orig -- ) 
; Compiler
; finish if
VE_THEN:
    .word 0x0004
    .ascii "then"
    .word VE_HEAD
    .set VE_HEAD, VE_THEN
XT_THEN:
    .word DO_COLON
PFA_THEN:
    .word XT_GRESOLVE
    .word XT_EXIT
