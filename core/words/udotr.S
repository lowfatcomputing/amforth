; ( u w -- ) 
; Numeric IO
; unsigned PNO with single cells numbers, right aligned in width w
VE_UDOTR:
    .word 0xff03
    .string "u.r"
    .word VE_HEAD
    .set VE_HEAD, VE_UDOTR
XT_UDOTR:
    .word DO_COLON
PFA_UDOTR:
    .word XT_ZERO
    .word XT_SWAP
    .word XT_UDDOTR
    .word XT_EXIT
; : u.r       ( s n -- )   0 swap ud.r ;
