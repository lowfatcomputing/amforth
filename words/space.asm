; ( -- )
VE_SPACE:
    .db $05, "space"
    .dw VE_LATEST
    .set VE_LATEST = VE_SPACE
XT_SPACE:
    .dw DO_COLON
PFA_SPACE:
    .dw XT_BL
    .dw XT_EMIT
    .dw XT_EXIT
