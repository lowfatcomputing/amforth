VE_UNTIL:
    .db $85, "until"
    .dw VE_HEAD
    .set VE_HEAD = VE_UNTIL
XT_UNTIL:
    .dw DO_COLON
PFA_UNTIL:
    .dw XT_DOLITERAL
    .dw XT_DOCONDBRANCH
    .dw XT_COMMA
    .dw XT_LRESOLVE
    .dw XT_EXIT
