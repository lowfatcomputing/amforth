; ( --  ) Compiler
; R( -- )
; put system to interpreter state
VE_LBRACKET:
    .db $81, "["
    .dw VE_HEAD
    .set VE_HEAD = VE_LBRACKET
XT_LBRACKET:
    .dw DO_COLON
PFA_LBRACKET:
    .dw XT_ZERO
    .dw XT_STATE
    .dw XT_STORE
    .dw XT_EXIT
