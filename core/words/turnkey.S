; ( -- n*y ) 
; System Value
; Deferred action during startup/reset
VE_TURNKEY:
    .word 0xff07
    .string "turnkey"
    .word VE_HEAD
    .set VE_HEAD, VE_TURNKEY
XT_TURNKEY:
    .word PFA_DODEFER
PFA_TURNKEY:
    .word EE_TURNKEY
    .word XT_EDEFERFETCH
    .word XT_EDEFERSTORE
