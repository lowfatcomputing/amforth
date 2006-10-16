; ( n1 -- n2 )
VE_NEGATE:
    .db $06, "negate",0
    .dw VE_LATEST
    .set VE_LATEST = VE_NEGATE
XT_NEGATE:
    .dw DO_COLON
PFA_NEGATE:
    .dw XT_INVERT
    .dw XT_1PLUS
    .dw XT_EXIT
