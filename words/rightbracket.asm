; ( --  ) Compiler
; R( -- )
; turn on compiler
VE_RBRACKET:
    .db $01, "]"
    .dw VE_HEAD
    .set VE_HEAD = VE_RBRACKET
XT_RBRACKET:
    .dw DO_COLON
PFA_RBRACKET:
    .dw XT_DOLITERAL
    .dw 1
    .dw XT_STATE
    .dw XT_STORE
    .dw XT_EXIT
