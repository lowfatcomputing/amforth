; (u1 u2 -- quot rem) Arithmetics
; R( -- )
; unsigned division with remainder
VE_USLASHMOD:
    .db $05, "u/mod"
    .dw VE_HEAD
    .set VE_HEAD = VE_USLASHMOD
XT_USLASHMOD:
    .dw DO_COLON
PFA_USLASHMOD:
    .dw XT_TO_R
    .dw XT_ZERO
    .dw XT_SWAP	
    .dw XT_R_FROM
    .dw XT_UMSLASHMOD
    .dw XT_EXIT
