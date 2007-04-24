; ( -- ) Character IO
; R( -- )
; emits CR/LF
VE_CR:
    .db $02, "cr", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_CR
XT_CR:
    .dw DO_COLON
PFA_CR:
    .dw XT_DOLITERAL
    .dw 13
    .dw XT_EMIT
    .dw XT_DOLITERAL
    .dw 10
    .dw XT_EMIT
    .dw XT_EXIT
