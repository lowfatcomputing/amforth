; ( -- ) Compiler
; R( -- )
; compile  XT of the word beeing currently defined into dictionary (! not conforming to ANS!)
VE_RECURSE:
    .dw $0007
    .db "recurse",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RECURSE
XT_RECURSE:
    .dw DO_COLON
PFA_RECURSE:
    .dw XT_GET_CURRENT
    .dw XT_EFETCH
    .dw XT_DUP
    .dw XT_IFETCH
    .dw XT_DOLITERAL
    .dw $00ff
    .dw XT_AND
    .dw XT_2SLASH
    .dw XT_1PLUS
    .dw XT_PLUS
    .dw XT_1PLUS
    .dw XT_COMMA
    .dw XT_EXIT
