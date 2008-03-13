; ( -- eaddr) System Pointer
; R( -- )
; address of the variable that holds an XT to be started by cold before quit takes over
VE_TURNKEY:
    .db $07, "turnkey"
    .dw VE_HEAD
    .set VE_HEAD = VE_TURNKEY
XT_TURNKEY:
    .dw PFA_DODEFER
PFA_TURNKEY:
    .dw $08
    .dw XT_EDEFERFETCH
    .dw XT_EDEFERSTORE
