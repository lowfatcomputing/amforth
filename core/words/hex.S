; ( -- )
; Numeric IO
; set base for number conversion to 16
VE_HEX:
    .word 0xff03
    .string "hex"
    .word VE_HEAD
    .set VE_HEAD, VE_HEX
XT_HEX:
    .word DO_COLON
PFA_HEX:
    .word XT_DOLITERAL
    .word 16
    .word XT_BASE
    .word XT_STORE
    .word XT_EXIT
