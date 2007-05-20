; ( -- eaddr) System Pointer
; R( -- )
; address of the variable that holds an XT to be started by cold before quit takes over
VE_EMIT:
    .db $04, "emit",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EMIT
XT_EMIT:
    .dw PFA_DODEFER
PFA_EMIT:
    .dw 12
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE
