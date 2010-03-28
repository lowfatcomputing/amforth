; ( -- addr ) Numeric IO
; R( -- )
; address of buffer for pictured numeric output
VE_HLD:
    .dw $ff03
    .db "hld",0
    .dw VE_HEAD
    .set VE_HEAD = VE_HLD
XT_HLD:
    .dw DO_COLON
PFA_HLD:
    .dw XT_HEAP
    .dw XT_EXIT
