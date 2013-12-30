; ( -- ) 
; System
; main loop of amforth. accept - interpret in an endless loop
VE_QUIT:
    .word 0xff04
    .ascii "quit"
    .word VE_HEAD
    .set VE_HEAD, VE_QUIT
XT_QUIT:
    .word DO_COLON
PFA_QUIT:
    .word XT_SP0
    .word XT_SP_STORE
    .word XT_RP0
    .word XT_RP_STORE
    .word XT_LBRACKET

PFA_QUIT2:
    .word XT_STATE
    .word XT_FETCH
    .word XT_EQUALZERO
    .word XT_DOCONDBRANCH
    .word PFA_QUIT4
    .word XT_PROMPTRDY
PFA_QUIT4:
    .word XT_REFILL
    .word XT_DOCONDBRANCH
    .word PFA_QUIT2
    .word XT_DOLITERAL
    .word XT_INTERPRET
    .word XT_CATCH
    .word XT_QDUP
    .word XT_DOCONDBRANCH
    .word PFA_QUIT3
	.word XT_DUP
	.word XT_DOLITERAL
	.word -2
	.word XT_LESS
	.word XT_DOCONDBRANCH
	.word PFA_QUIT5
	.word XT_PROMPTERROR
PFA_QUIT5:
	.word XT_DOBRANCH
	.word PFA_QUIT
PFA_QUIT3:
    .word XT_PROMPTOK
    .word XT_DOBRANCH
    .word PFA_QUIT2
    .word XT_EXIT ; never reached

