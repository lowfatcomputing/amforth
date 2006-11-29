; stack pointer changed
VE_SP0:
    .db $03, "sp0"
    .dw VE_HEAD
    .set VE_HEAD = VE_SP0
XT_SP0:
    .dw DO_COLON
PFA_SP0:
    .dw XT_DOSP0
    .dw XT_FETCH
    .dw XT_EXIT

XT_DOSP0:
    .dw PFA_DOUSER
PFA_DOSP0:
    .dw 4
