; ( -- ) Compiler
; R( -- )
; finish colon defintion, compiles (exit) and returns to interpreter state 
VE_SEMICOLON:
    .db $81, $3b
    .dw VE_HEAD
    .set VE_HEAD = VE_SEMICOLON
XT_SEMICOLON:
    .dw DO_COLON
PFA_SEMICOLON:
    .dw XT_COMPILE
    .dw XT_EXIT
    .dw XT_LBRACKET
    .dw XT_EXIT
