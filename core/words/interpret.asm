; ( -- ) System
; R(i*x - j*x )
; interpret input word by word. may throw exceptions
VE_INTERPRET:
    .dw $ff09
    .db "interpret",0
    .dw VE_HEAD
    .set VE_HEAD = VE_INTERPRET
XT_INTERPRET:
    .dw DO_COLON
PFA_INTERPRET:
PFA_INTERPRET1:
    ; begin
    ;   bl word dup c@ 0> 
    ; while
    ;   find ?dup if
    ;      0> if
    ;         execute
    ;      else
    ;         state @ if , else execute then
    ;      then
    ;   else
    ;      number state @ if
    ;        compile (literal) ,
    ;      then
    ;   then
    ;  ?stack
    ; repeat drop

    .dw XT_BL
    .dw XT_WORD
    .dw XT_DUP
    .dw XT_CFETCH
    .dw XT_GREATERZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET4
    
    .dw XT_FIND
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH 
    .dw PFA_INTERPRET2
	; either compile or execute the XT
	.dw XT_GREATERZERO
	.dw XT_DOCONDBRANCH
	.dw PFA_INTERPRET5
	    ; flag is 1: always execute
	    .dw XT_EXECUTE
	    .dw XT_DOBRANCH
	    .dw PFA_INTERPRET6
PFA_INTERPRET5:
        ; check state 
	    .dw XT_STATE
	    .dw XT_FETCH
	    .dw XT_DOCONDBRANCH
	    .dw PFA_INTERPRET7
    .dw XT_COMMA
    .dw XT_DOBRANCH
    .dw PFA_INTERPRET8
PFA_INTERPRET7:
    ; state is zero, execute xt
    .dw XT_EXECUTE
PFA_INTERPRET8:
PFA_INTERPRET6:
    .dw XT_DOBRANCH
    .dw PFA_INTERPRET3
PFA_INTERPRET2:
    ; try converting to a number
    .dw XT_NUMBER ; may throw an exception
    .dw XT_STATE
    .dw XT_FETCH
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET9
        .dw XT_COMPILE
        .dw XT_DOLITERAL
        .dw XT_COMMA
PFA_INTERPRET9:
PFA_INTERPRET3:
    .dw XT_QSTACK
    .dw XT_DOBRANCH
    .dw PFA_INTERPRET1

PFA_INTERPRET4:
    .dw XT_DROP
    .dw XT_EXIT
