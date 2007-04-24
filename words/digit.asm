; ( c base -- number flag ) Numeric IO
; R( -- )
; convert character to number, set flag if successful
VE_DIGIT:
    .db $05, "digit"
    .dw VE_HEAD
    .set VE_HEAD = VE_DIGIT
XT_DIGIT:
    .dw DO_COLON
PFA_DIGIT:
    .dw XT_SWAP
    ; [char] 0 -
    .dw XT_DOLITERAL
    .dw $30 ; '0'
    .dw XT_MINUS
    
    ; dup 9 >
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw 9
    .dw XT_GREATER
    .dw XT_DOCONDBRANCH
    .dw PFA_DIGIT1
    ; if
	; we had a non-numeric character
	.dw XT_DOLITERAL
	.dw $df
	.dw XT_AND ; make uppercase

        .dw XT_DOLITERAL
	.dw 7
        .dw XT_MINUS ; finally 'a' -> 10

	.dw XT_DUP
	.dw XT_DOLITERAL
	.dw 10
	.dw XT_LESS
	.dw XT_DOCONDBRANCH
	.dw PFA_DIGIT1
	    ; invalid character
	    .dw XT_DROP
	    .dw XT_ZERO
	    .dw XT_EXIT
PFA_DIGIT1:
    ; ( b n -- n f)
    ; compare with the limits:  less than base and and not negative
    .dw XT_SWAP
    .dw XT_OVER
    .dw XT_GREATER

    .dw XT_OVER
    .dw XT_LESSZERO
    .dw XT_EQUALZERO
    .dw XT_AND
    .dw XT_EXIT
