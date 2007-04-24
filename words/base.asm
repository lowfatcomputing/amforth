; ( -- addr ) Numeric IO
; R( -- )
; base fo numeric IO
VE_BASE:
    .db $04, "base",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BASE
XT_BASE:
    .dw PFA_DOUSER
PFA_BASE:
    .dw 0
