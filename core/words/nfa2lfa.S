; ( nfa -- lfa )
; System
; get the link field address from the name field address
VE_NFA2LFA:
   .word 0xff07
   .string "nfa>lfa"
   .word VE_HEAD
   .set VE_HEAD, VE_NFA2LFA
XT_NFA2LFA:
    .word DO_COLON
PFA_NFA2LFA:
    .word XT_ICOUNT 
    .word XT_DOLITERAL
    .word 0x00ff
    .word XT_AND
    .word XT_1PLUS
    .word XT_2SLASH
    .word XT_PLUS
    .word XT_EXIT
