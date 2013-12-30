; (C: orig1 -- orig2 ) 
; Compiler
; resolve the forward reference and place a new unresolved forward reference
VE_ELSE:
    .word 0x0004
    .ascii "else"
    .word VE_HEAD
    .set VE_HEAD, VE_ELSE
XT_ELSE:
    .word DO_COLON
PFA_ELSE:
    .word XT_COMPILE
    .word XT_DOBRANCH
    .word XT_GMARK
    .word XT_SWAP
    .word XT_GRESOLVE
    .word XT_EXIT
