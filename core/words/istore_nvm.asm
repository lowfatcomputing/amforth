; ( n addr -- ) Memory
; R( -- )
; writes a cell in flash
VE_DO_ISTORE:
    .dw $ff04
    .db "(i!)"
    .dw VE_HEAD
    .set VE_HEAD = VE_DO_ISTORE
XT_DO_ISTORE:
    .dw DO_COLON
PFA_DO_ISTORE:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT

