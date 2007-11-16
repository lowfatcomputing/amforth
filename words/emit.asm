; ( -- eaddr) Character IO
; R( -- )
; fetch the emit vector and execute it
VE_EMIT:
    .db $04, "emit",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EMIT
XT_EMIT:
    .dw PFA_DODEFER
PFA_EMIT:
    .dw 14
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE
