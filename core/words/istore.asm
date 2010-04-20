; ( -- n*y ) System Value
; R( -- )
; Deferred action during startup/reset
VE_ISTORE:
    .dw $ff02
    .db "i!"
    .dw VE_HEAD
    .set VE_HEAD = VE_ISTORE
XT_ISTORE:
    .dw PFA_DODEFER
PFA_ISTORE:
    .dw EE_ISTORE
    .dw XT_EDEFERFETCH
    .dw XT_EDEFERSTORE
