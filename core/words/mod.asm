; ( n1 n2 -- n3) Arithmetics
; R( -- )
; remainder of division
VE_MOD:
    .db $03, "mod"
    .dw VE_HEAD
    .set VE_HEAD = VE_MOD
XT_MOD:
    .dw DO_COLON
PFA_MOD:
    .dw XT_SLASHMOD
    .dw XT_DROP
    .dw XT_EXIT
