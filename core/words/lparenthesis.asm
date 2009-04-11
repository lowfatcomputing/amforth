; ( -- ) Compiler
; R( -- )
; skip everything up to the closing bracket on the same line
VE_LPARENTHESIS:
    .dw $0001
    .db "(" ,0
    .dw VE_HEAD
    .set VE_HEAD = VE_LPARENTHESIS
XT_LPARENTHESIS:
    .dw DO_COLON
PFA_LPARENTHESIS:
    .dw XT_DOLITERAL
    .dw $29
    .dw XT_WORD
    .dw XT_COUNT
    .dw XT_SWAP
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_LPARENTHESIS3
    .dw XT_DROP
    .dw XT_REFILL
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_LPARENTHESIS
PFA_LPARENTHESIS3:
    .dw XT_G_IN
    .dw XT_PLUSSTORE
    .dw XT_EXIT