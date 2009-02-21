; ( addr -- [ addr 0 ] | [ xt [-1|1]] ) Tools
; R( -- )
; search wordlists
VE_FIND:
    .dw $ff04
    .db "find"
    .dw VE_HEAD
    .set VE_HEAD = VE_FIND
XT_FIND:
    .dw DO_COLON
PFA_FIND:
    .dw XT_ZERO     ; ( addr 0)
    .dw XT_DOLITERAL
    .dw NUMWORDLISTS
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_FIND2
PFA_FIND1:
    ; ( addr 0 --)
    .dw XT_OVER
    .dw XT_COUNT ; ( -- addr 0 addr+1 len )
    .dw XT_DOLITERAL
    .dw ORDERLIST
    .dw XT_I
    .dw XT_2STAR
    .dw XT_PLUS  ; ( -- addr 0 addr+1 len wid )
    .dw XT_EFETCH
    ; check if last in order
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw -1
    .dw XT_EQUAL ; ( addr 0 addr+1 len wid flag )
    .dw XT_DOCONDBRANCH
    .dw PFA_FIND3
	.dw XT_DROP
	.dw XT_DROP
	.dw XT_DROP
	.dw XT_LEAVE
PFA_FIND3:
    .dw XT_SEARCH_WORDLIST ; ( -- addr 0 [xt] flag
    .dw XT_QDUP  
    .dw XT_DOCONDBRANCH
    .dw PFA_FIND4
	.dw XT_TO_R
	.dw XT_TO_R
	.dw XT_DROP
	.dw XT_DROP
	.dw XT_R_FROM
	.dw XT_R_FROM
	.dw XT_LEAVE
PFA_FIND4:
    .dw XT_DOLOOP
    .dw PFA_FIND1
PFA_FIND2:
    .dw XT_EXIT
