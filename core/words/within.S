; ( n min max -- f) 
; Compare
; check if n is within min..max
VE_WITHIN:
    .word 0xff06
    .ascii "within"
    .word VE_HEAD
    .set VE_HEAD, VE_WITHIN
XT_WITHIN:
    .word DO_COLON
PFA_WITHIN:
    .word XT_OVER
    .word XT_MINUS
    .word XT_TO_R
    .word XT_MINUS
    .word XT_R_FROM
    .word XT_ULESS
    .word XT_EXIT
; : within >r over > swap r> > or 0= ;
; alternativly
; : within over - >r - r> u< ;
