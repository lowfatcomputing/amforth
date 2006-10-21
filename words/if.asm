VE_IF:
    .db $82, "if",0
    .dw VE_HEAD
    .set VE_HEAD = VE_IF
XT_IF:
    .dw DO_COLON
PFA_IF:
    .dw XT_DOLITERAL
    .dw XT_DOCONDBRANCH
    .dw XT_COMMA
    .dw XT_GMARK
    .dw XT_EXIT