; ( u1 u2 u3 -- quot rem) Arithmetics
; R( -- )
; unsigned division with remainder u3 * u2 / u1 
VE_USTARSLASHMOD:
    .db $06, "u*/mod",0
    .dw VE_HEAD
    .set VE_HEAD = VE_USTARSLASHMOD
XT_USTARSLASHMOD:
    .dw DO_COLON
PFA_USTARSLASHMOD:
    .dw XT_TO_R
    .dw XT_MSTAR
    .dw XT_R_FROM
    .dw XT_UMSLASHMOD
    .dw XT_EXIT
