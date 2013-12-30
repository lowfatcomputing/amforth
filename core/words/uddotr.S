; ( ud w -- ) 
; Numeric IO
; unsigned PNO with double cell numbers, right aligned in width w
VE_UDDOTR:
    .word 0xff04
    .ascii "ud.r"
    .word VE_HEAD
    .set VE_HEAD, VE_UDDOTR
XT_UDDOTR:
    .word DO_COLON
PFA_UDDOTR:
    .word XT_TO_R
    .word XT_L_SHARP
    .word XT_SHARP_S
    .word XT_SHARP_G
    .word XT_R_FROM
    .word XT_OVER
    .word XT_MINUS
    .word XT_SPACES
    .word XT_TYPE
    .word XT_EXIT
; : ud.r      ( ud n -- )  >r <# #s #> r> over - spaces type ;
