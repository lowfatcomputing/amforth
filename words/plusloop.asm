VE_PLOOP:
    .db $85, "+loop"
    .dw VE_HEAD
    .set VE_HEAD = VE_PLOOP
XT_PLOOP:
    .dw DO_COLON
PFA_PLOOP:
    .dw XT_DOLITERAL
    .dw XT_DOPLUSLOOP
    .dw XT_COMMA
    .dw XT_LRESOLVE
    .dw XT_EXIT
