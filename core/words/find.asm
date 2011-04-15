; ( addr -- [ addr 0 ] | [ xt [-1|1]] ) 
; Tools
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
    .dw EE_ORDERLISTLEN
    .dw XT_FETCHE
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_FIND2
PFA_FIND1:
    ; ( addr 0 --)
    .dw XT_OVER
    .dw XT_COUNT ; ( -- addr 0 addr+1 len )
    .dw XT_DOLITERAL
    .dw EE_ORDERLIST
    .dw XT_I
    .dw XT_2STAR
    .dw XT_PLUS  ; ( -- addr 0 addr+1 len wid )
    .dw XT_FETCHE
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


; : find >r get-order r> swap 0 swap 0 ( widn...wid1 addr 0 n 0 -- )
;   ?do
;     dup 0<> if
;        rot drop
;     else
;        drop dup >r count rot search-wordlist r> swap
;   loop
;   ;