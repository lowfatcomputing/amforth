; ( d w -- ) 
; Numeric IO
; singed PNO with double cell numbers, right aligned in width w
VE_DDOTR:
    .word 0xff03
    .string "d.r"
    .word VE_HEAD
    .set VE_HEAD, VE_DDOTR
XT_DDOTR:
    .word DO_COLON
PFA_DDOTR:
    .word XT_TO_R
    .word XT_SWAP
    .word XT_OVER
    .word XT_DABS
    .word XT_L_SHARP
    .word XT_SHARP_S
    .word XT_ROT
    .word XT_SIGN
    .word XT_SHARP_G
    .word XT_R_FROM
    .word XT_OVER
    .word XT_MINUS
    .word XT_SPACES
    .word XT_TYPE
    .word XT_EXIT
; : d.r       ( d n -- )
;             >r swap over dabs <# #s rot sign #> r> over - spaces type ;
