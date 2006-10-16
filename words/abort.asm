; ( nx -- )
VE_ABORT:
    .db $05, "abort"
    .dw VE_LATEST
    .set VE_LATEST = VE_ABORT
XT_ABORT:
    .dw PFA_ABORT
PFA_ABORT:
    rjmp abort ; identical to power on reset
