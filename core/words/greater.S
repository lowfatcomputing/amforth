; ( n1 n2 -- flag )
; Compare
; flag is true if n1 is greater than n2
VE_GREATER:
    .word 0xff01
    .string ">"
    .word VE_HEAD
    .set VE_HEAD, VE_GREATER
XT_GREATER:
    .word DO_COLON
PFA_GREATER:
    .word XT_MINUS
    .word XT_GREATERZERO
    .word XT_EXIT
