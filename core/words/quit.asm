; ( -- ) System
; R( -- )
; main loop of amforth. accept - interpret in an endless loop
VE_QUIT:
    .dw $ff04
    .db "quit"
    .dw VE_HEAD
    .set VE_HEAD = VE_QUIT
XT_QUIT:
    .dw DO_COLON
PFA_QUIT:
    .dw XT_SP0
    .dw XT_SP_STORE
    .dw XT_RP0
    .dw XT_RP_STORE
    .dw XT_LBRACKET

PFA_QUIT2:
    .dw XT_STATE
    .dw XT_FETCH
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_QUIT4
    .dw XT_CR
    .dw XT_SLITERAL
    .dw 2
    .db "> "
    .dw XT_ITYPE
PFA_QUIT4:
    .dw XT_REFILL
    .dw XT_DOCONDBRANCH
    .dw PFA_QUIT2
    .dw XT_DOLITERAL
    .dw XT_INTERPRET
    .dw XT_CATCH
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_QUIT3
	.dw XT_DUP
	.dw XT_DOLITERAL
	.dw -2
	.dw XT_LESS
	.dw XT_DOCONDBRANCH
	.dw PFA_QUIT5
.if want_fun
	.dw XT_G_IN
	.dw XT_FETCH
	.dw XT_SPACES
	.dw XT_DOLITERAL
	.dw '^'
	.dw XT_EMIT
	.dw XT_CR
.endif
	.dw XT_SLITERAL
	.dw 4
	.db  " ?? "
        .dw XT_ITYPE
	.dw XT_BASE
	.dw XT_FETCH
	.dw XT_TO_R
	.dw XT_DECIMAL
	.dw XT_DOT
	.dw XT_G_IN
	.dw XT_FETCH
	.dw XT_DOT
	.dw XT_R_FROM
	.dw XT_BASE
	.dw XT_STORE

PFA_QUIT5:
	.dw XT_DOBRANCH
	.dw PFA_QUIT
PFA_QUIT3:
    .dw XT_SLITERAL
    .dw 3
    .db " ok",0
    .dw XT_ITYPE
    .dw XT_DOBRANCH
    .dw PFA_QUIT2

    .dw XT_EXIT ; never reached
