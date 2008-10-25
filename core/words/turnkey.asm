; ( -- n*y ) System Value
; R( -- )
; Deferred action during startup/reset
VE_TURNKEY:
    .dw $ff07
    .db "turnkey",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TURNKEY
XT_TURNKEY:
    .dw PFA_DODEFER
PFA_TURNKEY:
    .dw 10
    .dw XT_EDEFERFETCH
    .dw XT_EDEFERSTORE
