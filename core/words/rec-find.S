; ( addr len -- f ) 
; Interpreter
; recognizer searching the dictionary
VE_REC_FIND:
    .word 0xff08
    .ascii "rec-find"
    .word VE_HEAD
    .set VE_HEAD, VE_REC_FIND
XT_REC_FIND:
    .word DO_COLON
PFA_REC_FIND:
    .word XT_FINDNAME
    .word XT_DUP
    .word XT_DOCONDBRANCH 
    .word PFA_REC_FIND_NOTFOUND
	; either compile or execute the XT
	.word XT_GREATERZERO
	.word XT_DOCONDBRANCH
	.word PFA_REC_FIND_CHECKSTATE
	    ; flag is 1: always execute
	    .word XT_DOBRANCH
	    .word PFA_REC_FIND_EXECUTE
PFA_REC_FIND_CHECKSTATE:
        ; check state 
	    .word XT_STATE
	    .word XT_FETCH
	    .word XT_DOCONDBRANCH
	    .word PFA_REC_FIND_EXECUTE
	    .word XT_COMMA
	    .word XT_DOBRANCH
	    .word PFA_REC_FIND_OK
PFA_REC_FIND_EXECUTE:
    ; state is zero, execute xt
    .word XT_EXECUTE
PFA_REC_FIND_OK:
    .word XT_TRUE
PFA_REC_FIND_NOTFOUND:
    .word XT_EXIT

