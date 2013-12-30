; ( -- )
; System
; send the READY prompt to the command line
;VE_PROMPTRDY:
;    .word 0xff04
;    .ascii "p_rd"
;    .word VE_HEAD
;    .set VE_HEAD, VE_PROMPTRDY
XT_PROMPTRDY:
    .word DO_COLON
PFA_PROMPTRDY:
    .word XT_CR
    .word XT_DOSLITERAL
    .word 2
    .ascii "> "
    .word XT_ITYPE
    .word XT_EXIT

; ( -- )
; System
; send the OK prompt to the command line
;VE_PROMPTOK:
;    .word 0xff04
;    .ascii "p_ok"
;    .word VE_HEAD
;    .set VE_HEAD, VE_PROMPTOK
XT_PROMPTOK:
    .word DO_COLON
PFA_PROMPTOK:
    .word XT_DOSLITERAL
    .word 3
    .string " ok"
    .word XT_ITYPE
    .word XT_EXIT

; ( n -- ) 
; System
; process the error prompt
;VE_PROMPTERROR:
;    .word 0xff04
;    .ascii "p_er"
;    .word VE_HEAD
;    .set VE_HEAD, VE_PROMPTERROR
XT_PROMPTERROR:
    .word DO_COLON
PFA_PROMPTERROR:
	.word XT_DOSLITERAL
	.word 4
	.ascii  " ?? "
    .word XT_ITYPE
	.word XT_BASE
	.word XT_FETCH
	.word XT_TO_R
	.word XT_DECIMAL
	.word XT_DOT
	.word XT_G_IN
	.word XT_FETCH
	.word XT_DOT
	.word XT_R_FROM
	.word XT_BASE
	.word XT_STORE
    .word XT_EXIT
