; ( n addr -- ) Memory
; R( -- )
; writes a cell in flash using NVM (atxmega)
VE_DO_STOREI_NVM:
    .dw $ff04
    .db "(i!)"
    .dw VE_HEAD
    .set VE_HEAD = VE_DO_STOREI_NVM
XT_DO_STOREI:
    .dw DO_COLON
PFA_DO_STOREI_NVM:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT

