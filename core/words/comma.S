; ( n -- ) 
; Dictionary
; compile 16 bit into flash at DP
VE_COMMA:
    .word 0xff01
    .string ","
    .word VE_HEAD
    .set VE_HEAD, VE_COMMA
XT_COMMA:
    .word DO_COLON
PFA_COMMA:
    .word XT_DP
    .word XT_STOREI
    .word XT_DP
    .word XT_1PLUS
    .word XT_DOTO
    .word PFA_DP
    .word XT_EXIT
