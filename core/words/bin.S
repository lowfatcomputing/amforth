; ( -- ) 
; Numeric IO
; set base for number conversion to 2
VE_BIN:
    .word 0xff03
    .string "bin"
    .word VE_HEAD
    .set VE_HEAD, VE_BIN
XT_BIN:
    .word DO_COLON
PFA_BIN:
    .word XT_DOLITERAL
    .word 2
    .word XT_BASE
    .word XT_STORE
    .word XT_EXIT
