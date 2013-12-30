; ( n1|u1 n2|u2 -- ) R( -- | loop-sys ) (C: -- do-sys)
; Compiler
; start a ?do .. [+]loop control structure
VE_QDO:
    .word 0x0003
    .string "?do"
    .word VE_HEAD
    .set VE_HEAD, VE_QDO
XT_QDO:
    .word DO_COLON
PFA_QDO:
    .word XT_COMPILE
    .word XT_DOQDO
    .word XT_GMARK
    .word XT_LMARK
    .word XT_EXIT
