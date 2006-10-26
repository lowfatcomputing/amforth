; ( addr len -- )
; dumps flash memory beginning with address addr and len cells long
;    aaaa    0  1  2  3
;    aaaa+4  4  5  6  7
VE_IDUMP:
    .db $85, "idump"
    .dw VE_HEAD
    .set VE_HEAD = VE_IDUMP
XT_IDUMP:
    .dw DO_COLON
PFA_IDUMP:
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_DODO
PFA_IDUMP1:
    .dw XT_I
    .dw XT_DOLITERAL
    .dw 4
    .dw XT_MOD
    .dw XT_DOCONDBRANCH
    .dw PFA_IDUMP2
	.dw XT_I
	.dw XT_DOT
	.dw XT_DOBRANCH
	.dw PFA_IDUMP3
PFA_IDUMP2:
	.dw XT_SPACE
	.dw XT_SPACE
	.dw XT_SPACE
	.dw XT_SPACE
	.dw XT_SPACE
PFA_IDUMP3:
    .dw XT_DUP
    .dw XT_I
    .dw XT_PLUS
    .dw XT_IFETCH
    .dw XT_DOT    
    .dw XT_LOOP
    .dw PFA_IDUMP1
    .dw XT_DROP
    .dw XT_EXIT
