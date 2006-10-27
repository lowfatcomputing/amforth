VE_DO:
    .db $82, "do",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DO
XT_DO:
    .dw DO_COLON
PFA_DO:
    .dw XT_DOLITERAL
    .dw XT_DODO
    .dw XT_COMMA
    .dw XT_LMARK
    .dw XT_EXIT
