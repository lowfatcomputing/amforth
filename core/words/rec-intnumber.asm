XT_REC_INTNUMBER:
    .dw DO_COLON
PFA_REC_INTNUMBER:
    ; try converting to a number
    .dw XT_NUMBER 
    .dw XT_DOCONDBRANCH 
    .dw PFA_REC_NONUMBER

    .dw XT_STATE
    .dw XT_FETCH
    .dw XT_DOCONDBRANCH
    .dw PFA_REC_NUMBER_DONE
	.dw XT_DOLITERAL
	.dw 2
	.dw XT_EQUAL
	.dw XT_DOCONDBRANCH
	.dw PFA_REC_NUMBER_SINGLE
	.dw XT_SWAP
        .dw XT_COMPILE
        .dw XT_DOLITERAL
        .dw XT_COMMA
PFA_REC_NUMBER_SINGLE:
        .dw XT_COMPILE
        .dw XT_DOLITERAL
        .dw XT_COMMA

        .dw XT_DOBRANCH
        .dw PFA_REC_NUMBER_OK
PFA_REC_NUMBER_DONE:
    .dw XT_DROP
PFA_REC_NUMBER_OK:
    .dw XT_ZERO
    .dw XT_EXIT
PFA_REC_NONUMBER:
    .dw XT_TRUE
    .dw XT_EXIT
