; stack pointer changed
VE_RP0:
    .db $03, "rp0"
    .dw VE_HEAD
    .set VE_HEAD = VE_RP0
XT_RP0:
    .dw DO_COLON
PFA_RP0:
    .dw XT_DOLITERAL
    .dw ramend
    .dw XT_EXIT
