; ( -- ) Compiler
; R( -- )
; set immediate flag
VE_IMMEDIATE:
    .dw $ff09
    .db "immediate",0
    .dw VE_HEAD
    .set VE_HEAD = VE_IMMEDIATE
XT_IMMEDIATE:
    .dw DO_COLON
PFA_IMMEDIATE:
    .dw XT_GET_CURRENT
    .dw XT_EFETCH
    .dw XT_DUP
    .dw XT_IFETCH
    .dw XT_DOLITERAL
    .dw $7fff
    .dw XT_AND
    .dw XT_SWAP
    .dw XT_ISTORE
    .dw XT_EXIT
