; ( n -- ) 
; Exceptions
; throw an exception
VE_THROW:
    .word 0xff05
    .string "throw"
    .word VE_HEAD
    .set VE_HEAD, VE_THROW
XT_THROW:
    .word DO_COLON
PFA_THROW:
    .word XT_DUP
    .word XT_EQUALZERO
    .word XT_DOCONDBRANCH
    .word PFA_THROW1
	.word XT_DROP
	.word XT_EXIT
PFA_THROW1:
    .word XT_HANDLER
    .word XT_FETCH
    .word XT_RP_STORE
    .word XT_R_FROM
    .word XT_HANDLER
    .word XT_STORE
    .word XT_R_FROM
    .word XT_SWAP
    .word XT_TO_R
    .word XT_SP_STORE
    .word XT_DROP
    .word XT_R_FROM    
    .word XT_EXIT

