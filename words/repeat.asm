VE_REPEAT:
    .db $86, "repeat",0
    .dw VE_HEAD
    .set VE_HEAD = VE_REPEAT
XT_REPEAT:
    .dw DO_COLON
PFA_REPEAT:
    .dw XT_DOLITERAL
    .dw XT_DOBRANCH
    .dw XT_COMMA
    .dw XT_SWAP
    .dw XT_LRESOLVE
    .dw XT_GRESOLVE
    .dw XT_EXIT