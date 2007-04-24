; ( -- ) Compiler
; R( -- )
; set immediate flag
VE_IMMEDIATE:
    .db $09, "immediate"
    .dw VE_HEAD
    .set VE_HEAD = VE_IMMEDIATE
XT_IMMEDIATE:
    .dw DO_COLON
PFA_IMMEDIATE:
    .dw XT_HEAD
    .dw XT_EFETCH
    .dw XT_DUP
    .dw XT_IFETCH
    .dw XT_DOLITERAL
    .dw $0080
    .dw XT_OR
    .dw XT_SWAP
    .dw XT_ISTORE
    .dw XT_EXIT
