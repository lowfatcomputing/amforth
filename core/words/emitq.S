; ( -- f ) 
; Character IO
; fetch emit? vector and execute it. should return the ready-to-send condition
VE_EMITQ:
    .word 0xff05
    .string "emit?"
    .word VE_HEAD
    .set VE_HEAD, VE_EMITQ
XT_EMITQ:
    .word PFA_DODEFER
PFA_EMITQ:
    .word USER_EMITQ
    .word XT_UDEFERFETCH
    .word XT_UDEFERSTORE
