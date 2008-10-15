; ( ud1 n -- rem ud2 ) Arithmetics
; R( -- )
; unsigned double cell division with remainder
VE_UDSLASHMOD:
    .db $06, "ud/mod",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UDSLASHMOD
XT_UDSLASHMOD:
    .dw DO_COLON
PFA_UDSLASHMOD:
    .dw XT_TO_R
    .dw XT_ZERO
    .dw XT_R_FETCH
    .dw XT_UMSLASHMOD
    .dw XT_R_FROM
    .dw XT_SWAP
    .dw XT_TO_R
    .dw XT_UMSLASHMOD
    .dw XT_R_FROM
    .dw XT_EXIT
; : ud/mod    ( ud1 n -- rem ud2 ) >r 0 r@ um/mod r> swap >r um/mod r> ; 
