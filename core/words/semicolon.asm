; ( -- )
; Compiler
; finish colon defintion, compiles (exit) and returns to interpret state 
VE_SEMICOLON:
    .dw $0001
    .db $3b,0
    .dw VE_HEAD
    .set VE_HEAD = VE_SEMICOLON
XT_SEMICOLON:
    .dw DO_COLON
PFA_SEMICOLON:
    .dw XT_COMPILE
    .dw XT_EXIT
    .dw XT_LBRACKET
    .dw XT_DOLITERAL
    .dw COLON_SMUDGE
    .dw XT_FETCH
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_SEMICOLON1
       .dw XT_GET_CURRENT
       .dw XT_STOREE
       .dw XT_ZERO
       .dw XT_DOLITERAL
       .dw COLON_SMUDGE
       .dw XT_STORE
PFA_SEMICOLON1:
    .dw XT_EXIT
