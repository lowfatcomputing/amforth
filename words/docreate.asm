; ( addr --  )
; R( -- )
; creates the vocabulary header without XT and PFA
;VE_DOCREATE:
;    .db $08, "(create)",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOCREATE
XT_DOCREATE:
    .dw DO_COLON
PFA_DOCREATE:
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
    .dw PFA_DOCREATE4
    .dw XT_2SLASH
    .dw XT_1PLUS
    ; ( addr ncells -- )
    ; fetch every cell and compile it into flash
    .dw XT_ZERO
    .dw XT_DODO
PFA_DOCREATE1:
        .dw XT_DUP
	.dw XT_FETCH
	.dw XT_COMMA
	.dw XT_1PLUS
	.dw XT_1PLUS
    .dw XT_DOLOOP
    .dw PFA_DOCREATE1
    .dw XT_DROP ; remove addr from loop
    ; make voc link
    .dw XT_HEAD
    .dw XT_EFETCH
    .dw XT_COMMA
    .dw XT_HEAD
    .dw XT_ESTORE
    .dw XT_EXIT

PFA_DOCREATE4:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT
