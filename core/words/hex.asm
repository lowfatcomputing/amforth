; ( -- ) Numeric IO
; R( -- )
; set base to 16 (decimal)
VE_HEX:
    .db $03, "hex"
    .dw VE_HEAD
    .set VE_HEAD = VE_HEX
XT_HEX:
    .dw DO_COLON
PFA_HEX:
    .dw XT_DOLITERAL
    .dw 16
    .dw XT_BASE
    .dw XT_STORE
    .dw XT_EXIT
