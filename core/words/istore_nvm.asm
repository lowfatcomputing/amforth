; ( n addr -- ) Memory
; R( -- )
; writes a cell in flash
VE_ISTORE:
    .dw $ff02
    .db "i!"
    .dw VE_HEAD
    .set VE_HEAD = VE_ISTORE
XT_ISTORE:
    .dw DO_COLON
PFA_ISTORE:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT

