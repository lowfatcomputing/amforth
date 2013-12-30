; ( n1 n2 -- ) (R: -- loop-sys ) (C: -- do-sys )
; Compiler
; start do .. [+]loop
VE_DO:
    .word 0x0002
    .ascii "do"
    .word VE_HEAD
    .set VE_HEAD, VE_DO
XT_DO:
    .word DO_COLON
PFA_DO:
    .word XT_COMPILE
    .word XT_DODO
    .word XT_GMARK
    .word XT_LMARK
    .word XT_EXIT
