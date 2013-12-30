; ( addr len --  0 | xt -1 | xt 1 ) 
; Tools
; search wordlists for the name from string addr/len
VE_FINDNAME:
    .word 0xff09
    .string "find-name"
    .word VE_HEAD
    .set VE_HEAD, VE_FINDNAME
XT_FINDNAME:
    .word DO_COLON
PFA_FINDNAME:
    .word XT_DOLITERAL
    .word EE_ORDERLISTLEN
    .word XT_FETCHE
    .word XT_ZERO
    .word XT_DOQDO
    .word PFA_FINDNAME2
PFA_FINDNAME1:
    ; ( addr len --)
    .word XT_2DUP
    .word XT_DOLITERAL
    .word EE_ORDERLIST
    .word XT_I
    .word XT_CELLS
    .word XT_PLUS  
    .word XT_FETCHE ; ( -- addr len addr len wid )
PFA_FINDNAME3:
    .word XT_SEARCH_WORDLIST ; ( -- addr len [xt] flag
    .word XT_QDUP
    .word XT_DOCONDBRANCH
    .word PFA_FINDNAME4
	.word XT_TO_R
	.word XT_TO_R
	.word XT_2DROP
	.word XT_R_FROM
	.word XT_R_FROM
	.word XT_UNLOOP
	.word XT_EXIT
PFA_FINDNAME4:
    .word XT_DOLOOP
    .word PFA_FINDNAME1
PFA_FINDNAME2:
    .word XT_2DROP
    .word XT_ZERO
    .word XT_EXIT
