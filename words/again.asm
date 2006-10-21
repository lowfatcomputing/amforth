VE_AGAIN:
    .db $85, "again"
    .dw VE_HEAD
    .set VE_HEAD = VE_AGAIN
XT_AGAIN:
    .dw DO_COLON
PFA_AGAIN:
    .dw XT_DOLITERAL
    .dw XT_DOBRANCH
    .dw XT_COMMA
    .dw XT_LRESOLVE
    .dw XT_EXIT
