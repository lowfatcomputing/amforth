; ( --  ) 
; Compiler
; enter interpreter mode
VE_LBRACKET:
    .word 0x0001
    .string "["
    .word VE_HEAD
    .set VE_HEAD, VE_LBRACKET
XT_LBRACKET:
    .word DO_COLON
PFA_LBRACKET:
    .word XT_ZERO
    .word XT_STATE
    .word XT_STORE
    .word XT_EXIT
