; ( n1 n2 n3 -- rem quot) 
; Arithmetics
; signed multiply n1 * n2 and division  with n3 with double precision intermediate and remainder
VE_STARSLASHMOD:
    .word 0xff05
    .string "*/mod"
    .word VE_HEAD
    .set VE_HEAD, VE_STARSLASHMOD
XT_STARSLASHMOD:
    .word DO_COLON
PFA_STARSLASHMOD:
    .word XT_TO_R
    .word XT_MSTAR
    .word XT_R_FROM
    .word XT_UMSLASHMOD
    .word XT_EXIT
    
