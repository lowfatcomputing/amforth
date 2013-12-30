; ( ud -- ) 
; Numeric IO
; unsigned PNO with double cell numbers
VE_UDDOT:
    .word 0xff03
    .string "ud."
    .word VE_HEAD
    .set VE_HEAD, VE_UDDOT
XT_UDDOT:
    .word DO_COLON
PFA_UDDOT:
    .word XT_ZERO
    .word XT_UDDOTR
    .word XT_SPACE
    .word XT_EXIT
; : ud.       ( ud -- )    0 ud.r space ;
