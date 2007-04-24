; ( addr len -- ) Tools
; R( -- )
; dumps flash memory beginning with address addr and len cells long
VE_IDUMP:
    .db $5, "idump"
    .dw VE_HEAD
    .set VE_HEAD = VE_IDUMP
XT_IDUMP:
    .dw DO_COLON
PFA_IDUMP:
    .dw XT_ZERO
    .dw XT_DODO
PFA_IDUMP1:
    .dw XT_I
    .dw XT_OVER
    .dw XT_PLUS
	.dw XT_DUP
	.dw XT_UDOT
    .dw XT_IFETCH
    .dw XT_UDOT
    .dw XT_CR
    .dw XT_DOLOOP
    .dw PFA_IDUMP1
    .dw XT_DROP
    .dw XT_EXIT
