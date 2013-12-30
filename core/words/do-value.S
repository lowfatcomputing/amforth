; ( -- n )
; System
; runtime of value
VE_DOVALUE:
    .word 0xff07
    .string "(value)"
    .word VE_HEAD
    .set VE_HEAD, VE_DOVALUE
XT_DOVALUE:
    .word DO_COLON
PFA_DOVALUE:
    .word XT_DOCREATE
    .word XT_REVEAL
    .word XT_COMPILE
    .word PFA_DOVALUE1
    .word XT_EXIT
PFA_DOVALUE1:
    call_ DO_DODOES
    .word XT_DUP
    .word XT_SWAP
    .word XT_1PLUS
    .word XT_FETCHI
    .word XT_EXECUTE
    .word XT_EXIT
