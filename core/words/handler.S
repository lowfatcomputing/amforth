; ( -- a-addr ) 
; Exceptions
; USER variable used by catch/throw
VE_HANDLER:
    .word 0xff07
    .string "handler"
    .word VE_HEAD
    .set VE_HEAD, VE_HANDLER
XT_HANDLER:
    .word PFA_DOUSER
PFA_HANDLER:
    .word USER_HANDLER
