; ( addr len -- f ) 
; Interpreter
; recognizer for integer numbers
VE_REC_INTNUMBER:
    .word 0xff0a
    .ascii "rec-intnum"
    .word VE_HEAD
    .set VE_HEAD, VE_REC_INTNUMBER
XT_REC_INTNUMBER:
    .word DO_COLON
PFA_REC_INTNUMBER:
    ; try converting to a number
    .word XT_NUMBER 
    .word XT_DOCONDBRANCH 
    .word PFA_REC_NONUMBER

    .word XT_STATE
    .word XT_FETCH
    .word XT_DOCONDBRANCH
    .word PFA_REC_NUMBER_DONE
	.word XT_DOLITERAL
	.word 2
	.word XT_EQUAL
	.word XT_DOCONDBRANCH
	.word PFA_REC_NUMBER_SINGLE
	.word XT_SWAP
        .word XT_LITERAL
PFA_REC_NUMBER_SINGLE:
        .word XT_LITERAL
        .word XT_DOBRANCH
        .word PFA_REC_NUMBER_OK
PFA_REC_NUMBER_DONE:
    .word XT_DROP
PFA_REC_NUMBER_OK:
    .word XT_TRUE
    .word XT_EXIT
PFA_REC_NONUMBER:
    .word XT_ZERO
    .word XT_EXIT
