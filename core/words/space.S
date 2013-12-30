; ( -- ) 
; Character IO
; emits a space (bl)
VE_SPACE:
    .word 0xff05
    .string "space"
    .word VE_HEAD
    .set VE_HEAD, VE_SPACE
XT_SPACE:
    .word DO_COLON
PFA_SPACE:
    .word XT_BL
    .word XT_EMIT
    .word XT_EXIT
