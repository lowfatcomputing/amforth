; ( -- ) Tools
; R( -- )
; do nothing
VE_NOOP:
    .dw $ff04
    .db "noop"
    .dw VE_HEAD
    .set VE_HEAD = VE_NOOP
XT_NOOP:
    .dw DO_COLON
PFA_NOOP:
    .dw XT_EXIT