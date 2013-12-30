; ( -- ) 
; Numeric IO
; set base for numeric conversion to 10
VE_DECIMAL:
    .word 0xff07
    .string "decimal"
    .word VE_HEAD
    .set VE_HEAD, VE_DECIMAL
XT_DECIMAL:
    .word DO_COLON
PFA_DECIMAL:
    .word XT_DOLITERAL
    .word 10
    .word XT_BASE
    .word XT_STORE
    .word XT_EXIT
