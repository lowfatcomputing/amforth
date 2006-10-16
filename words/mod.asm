; ( n1 n2 -- n3)
VE_MOD:
    .db $03, "mod"
    .dw VE_LATEST
    .set VE_LATEST = VE_MOD
XT_MOD:
    .dw DO_COLON
PFA_MOD:
    .dw XT_SLASHMOD
    .dw XT_DROP
    .dw XT_EXIT
