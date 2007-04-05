; ( n1 n2 n3 -- n4 n5)
; R( -- )
; signed multiply with division and remainder
VE_STARSLASHMOD:
    .db $05, "*/mod"
    .dw VE_HEAD
    .set VE_HEAD = VE_STARSLASHMOD
XT_STARSLASHMOD:
    .dw DO_COLON
PFA_STARSLASHMOD:
    .dw XT_TO_R
    .dw XT_MSTAR
    .dw XT_R_FROM
    .dw XT_SLASHMOD
    .dw XT_EXIT
    