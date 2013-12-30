; ( i*x -- ) (R: j*y -- )
; Exceptions
; send an exception -1
VE_ABORT:
    .word 0xff05
    .string "abort"
    .word VE_HEAD
    .set VE_HEAD, VE_ABORT
XT_ABORT:
    .word DO_COLON
PFA_ABORT:
    .word XT_DOLITERAL
    .word -1
    .word XT_THROW
