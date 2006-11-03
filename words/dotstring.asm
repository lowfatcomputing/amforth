VE_DOTSTRING:
    .db $82, ".",$22,0
    .dw VE_HEAD
    .set VE_HEAD = VE_DOTSTRING
XT_DOTSTRING:
    .dw DO_COLON
PFA_DOTSTRING:
    .dw XT_DOLITERAL
    .dw $22
    .dw XT_WORD
    .dw XT_COUNT
    .dw XT_SWAP
    .dw XT_1MINUS
    .dw XT_SWAP
    .dw XT_2SLASH
    .dw XT_1PLUS
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_DOLITERAL
    .dw XT_DODOTSTRING
    .dw XT_COMMA
    .dw XT_DODO
PFA_DOTSTRING1:
	.dw XT_DOLITERAL
	.dw '*'
	.dw XT_EMIT
    .dw XT_DUP
    .dw XT_FETCH
    .dw XT_COMMA
    .dw XT_1PLUS
    .dw XT_1PLUS
    .dw XT_DOLOOP
    .dw PFA_DOTSTRING1
    .dw XT_DROP
    .dw XT_EXIT
