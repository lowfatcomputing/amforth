; ( addr -- addr' )
; not the same stack diagram as type!!
VE_ITYPE:
    .db $05, "itype"
    .dw VE_LATEST
    .set VE_LATEST = VE_ITYPE
XT_ITYPE:
    .dw DO_COLON
PFA_ITYPE:
    ; zellenzahl = (bytezahl + 1 ) / 2
    
    .dw XT_DUP
    .dw XT_IFETCH
	.dw XT_DUP
	.dw XT_DOLITERAL
	.dw 8
	.dw XT_RSHIFT
	.dw XT_EMIT
    .dw XT_DOLITERAL
    .dw $007f
    .dw XT_AND
    .dw XT_DUP
    .dw XT_GREATERZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_ITYPE4
    .dw XT_2SLASH
    .dw XT_1PLUS
    ; ( addr ncells -- )
    ; fetch every cell and emit its characters
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_1MINUS
    .dw XT_DUPQ
    .dw XT_GREATERZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_ITYPE5
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_DODO
PFA_ITYPE1:
	.dw XT_1PLUS
	.dw XT_DUP
	.dw XT_IFETCH
	.dw XT_DUP
	.dw XT_DOLITERAL
	.dw $00ff
	.dw XT_AND
	.dw XT_EMIT
	.dw XT_DOLITERAL
	.dw 8
	.dw XT_RSHIFT
	.dw XT_EMIT

    .dw XT_DOLOOP
    .dw PFA_ITYPE1
PFA_ITYPE5:
    .dw XT_DROP
PFA_ITYPE4:
    .dw XT_PLUS
    .dw XT_EXIT
