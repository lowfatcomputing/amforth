; ( --  ) 
; Compiler
; enter compiler mode
VE_RBRACKET:
    .word 0xff01
    .string "]"
    .word VE_HEAD
    .set VE_HEAD, VE_RBRACKET
XT_RBRACKET:
    .word DO_COLON
PFA_RBRACKET:
    .word XT_DOLITERAL
    .word 1
    .word XT_STATE
    .word XT_STORE
    .word XT_EXIT
