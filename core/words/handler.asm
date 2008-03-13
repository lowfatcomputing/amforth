; ( -- addr ) Exceptions
; R( -- )
; used by catch/throw
VE_HANDLER:
    .db $07, "handler"
    .dw VE_HEAD
    .set VE_HEAD = VE_HANDLER
XT_HANDLER:
    .dw PFA_DOUSER
PFA_HANDLER:
    .dw 10
