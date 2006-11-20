; ( addr --  )
VE_VHEADER:
    .db $07, "vheader"
    .dw VE_HEAD
    .set VE_HEAD = VE_VHEADER
XT_VHEADER:
    .dw DO_COLON
PFA_VHEADER:
    ; copy counted string into flash,
    ; make voclink entry and update dictionary pointer
    ; zellenzahl = (bytezahl + 1 ) / 2
    .dw XT_HERE
    .dw XT_SWAP
    .dw XT_DUP
    .dw XT_CFETCH
    .dw XT_QDUP
    .dw XT_GREATERZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_VHEADER4
    .dw XT_2SLASH
    .dw XT_1PLUS
    ; ( addr ncells -- )
    ; fetch every cell and compile it into flash
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_DODO
PFA_VHEADER1:
        .dw XT_DUP
	.dw XT_FETCH
	.dw XT_COMMA
	.dw XT_1PLUS
	.dw XT_1PLUS
    .dw XT_DOLOOP
    .dw PFA_VHEADER1
    .dw XT_DROP ; remove addr from loop
    ; make voc link
    .dw XT_HEAD
    .dw XT_EFETCH
    .dw XT_COMMA
    .dw XT_HEAD
    .dw XT_ESTORE
    .dw XT_EXIT

PFA_VHEADER4:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT
