; ( nx -- )
VE_ABORT:
    .db $05, "abort"
    .dw VE_HEAD
    .set VE_HEAD = VE_ABORT
XT_ABORT:
    .dw DO_COLON
PFA_ABORT:
    .dw XT_DOLITERAL
    .dw -1
    .dw XT_THROW
