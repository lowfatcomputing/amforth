; ( addr --  )
; R( -- )
; creates the vocabulary header without XT and data field (PF)
;VE_DOCREATE:
;    .db $08, "(create)",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOCREATE
XT_DOCREATE:
    .dw DO_COLON
PFA_DOCREATE:
    .dw XT_HERE   ; ( -- addr here )
    .dw XT_SWAP   ; ( -- here addr )
    .dw XT_DUP    ; ( -- here addr addr )
    .dw XT_CFETCH ; ( -- here addr n )
    .dw XT_QDUP   ; ( -- here addr nn|0 )
    .dw XT_GREATERZERO ;
    .dw XT_DOCONDBRANCH
    .dw PFA_DOCREATE4 ; ( -- here addr n )
    .dw XT_2SLASH
    .dw XT_1PLUS      ; ( -- here addr ncells )
    ; fetch every cell and compile it into flash
    .dw XT_ZERO
    .dw XT_DODO
PFA_DOCREATE1:        ; ( -- here addr )
        .dw XT_DUP    ; ( -- here addr addr )
	.dw XT_FETCH  ; ( -- here addr cc )
	.dw XT_COMMA  ; ( -- here addr )
	.dw XT_1PLUS  ; ( -- here addr++ )
	.dw XT_1PLUS  ; ( -- here addr++ )
    .dw XT_DOLOOP
    .dw PFA_DOCREATE1
    .dw XT_DROP       ; ( -- here  )
    ; make voc link
    .dw XT_HEAD       ; ( -- here head )
    .dw XT_EFETCH
    .dw XT_COMMA      ; ( -- here)
    .dw XT_HEAD       ; ( -- here head )
    .dw XT_ESTORE     ; ( -- )
    .dw XT_EXIT

PFA_DOCREATE4:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT
