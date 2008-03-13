; ( -- ) Numeric IO
; R( -- )
; set base to 10 (decimal)
VE_DECIMAL:
    .db $07, "decimal"
    .dw VE_HEAD
    .set VE_HEAD = VE_DECIMAL
XT_DECIMAL:
    .dw DO_COLON
PFA_DECIMAL:
    .dw XT_DOLITERAL
    .dw 10
    .dw XT_BASE
    .dw XT_STORE
    .dw XT_EXIT
