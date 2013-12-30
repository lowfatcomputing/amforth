; ( -- xt )
; Compiler
; create an unnamed entry in the dictionary, XT is DO_COLON
VE_COLONNONAME:
    .word 0xff07
    .string ":noname"
    .word VE_HEAD
    .set VE_HEAD, VE_COLONNONAME
XT_COLONNONAME:
    .word DO_COLON
PFA_COLONNONAME:
    .word XT_DP
    .word XT_DUP
    .word XT_LATEST
    .word XT_STORE

    .word XT_COMPILE
    .word DO_COLON

    .word XT_RBRACKET
    .word XT_EXIT
