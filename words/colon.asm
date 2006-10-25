VE_COLON:
    .db $1, ":"
    .dw VE_HEAD
    .set VE_HEAD = VE_COLON
XT_COLON:
    .dw DO_COLON
PFA_COLON:
    .dw XT_BL
    .dw XT_WORD
    .dw XT_VHEADER
    .dw XT_DOLITERAL
    .dw DO_COLON
    .dw XT_COMMA
    .dw XT_RBRACKET
    .dw XT_EXIT
