; ( -- addr ) Numeric IO
; R( -- )
; base fo numeric IO
VE_BASE:
    .dw $ff04
    .db "base"
    .dw VE_HEAD
    .set VE_HEAD = VE_BASE
XT_BASE:
    .dw PFA_DOUSER
PFA_BASE:
    .dw USER_BASE
