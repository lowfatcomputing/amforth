; ( n1 n2 -- n3 ) 
; Arithmetics
; multiply routine
VE_STAR:
    .word 0xff01
    .string "*"
    .word VE_HEAD
    .set VE_HEAD, VE_STAR
XT_STAR:
    .word DO_COLON
PFA_STAR:
    .word XT_MSTAR
    .word XT_D2S
    .word XT_EXIT
