; (addr len -- [n|d size] f) 
; Numeric IO
; convert a string at addr to a number
VE_NUMBER:
    .word 0xff06
    .ascii "number"
    .word VE_HEAD
    .set VE_HEAD, VE_NUMBER
XT_NUMBER:
    .word DO_COLON
PFA_NUMBER:
    .word XT_BASE
    .word XT_FETCH
    .word XT_TO_R
    .word XT_NUMBERSIGN
    .word XT_TO_R
    .word XT_PRAEFIX
    .word XT_NUMBERSIGN
    .word XT_R_FROM
    .word XT_OR
    .word XT_TO_R
    .word XT_TO_R
    .word XT_TO_R
    .word XT_ZERO       ; starting value
    .word XT_ZERO
    .word XT_R_FROM
    .word XT_R_FROM
    .word XT_TO_NUMBER ; ( 0. addr len -- d addr' len'
    ; check length of the remaining string.
    ; if zero: a single cell number is entered
    .word XT_QDUP
        .word XT_DOCONDBRANCH
	.word PFA_NUMBER1
    ; if equal 1: mayba a trailing dot? --> double cell number
    .word XT_DOLITERAL
    .word 1
    .word XT_EQUAL
    .word XT_DOCONDBRANCH
    .word PFA_NUMBER2
	; excatly one character is left
	.word XT_CFETCH
	.word XT_DOLITERAL
	.word 0x2e ; .
	.word XT_EQUAL
	.word XT_DOCONDBRANCH
	.word PFA_NUMBER2
	; its a double cell number
        ; incorporate sign into number
	.word XT_R_FROM
        .word XT_DOCONDBRANCH
	.word PFA_NUMBER3
        .word XT_DNEGATE
PFA_NUMBER3:
	.word XT_DOLITERAL
	.word 2
	.word XT_DOBRANCH
	.word PFA_NUMBER5
PFA_NUMBER2:
	.word XT_2DROP
	.word XT_DROP
	.word XT_R_FROM
	.word XT_DROP
        .word XT_R_FROM
        .word XT_BASE
        .word XT_STORE
	.word XT_ZERO
	.word XT_EXIT
PFA_NUMBER1:
    .word XT_2DROP ; remove the address
    ; incorporate sign into number
    .word XT_R_FROM
    .word XT_DOCONDBRANCH
    .word PFA_NUMBER4
    .word XT_NEGATE
PFA_NUMBER4:
    .word XT_DOLITERAL
    .word 1
PFA_NUMBER5:
    .word XT_R_FROM
    .word XT_BASE
    .word XT_STORE
    .word XT_TRUE
    .word XT_EXIT

; ( addr len -- addr' len' ) 
; Numeric IO
; skip a numeric prefix character
;VE_PRAEFIX:
;    .word 0xFF07 
;    .string "praefix"
;    .word VE_HEAD
;    .set VE_HEAD, VE_PRAEFIX
XT_PRAEFIX:
    .word DO_COLON 
PFA_PRAEFIX:        ; ( adr1 len1 -- adr2 len2 ) 
    .word XT_OVER 
    .word XT_CFETCH 
    .word XT_DOLITERAL
    .word 0x29 
    .word XT_GREATER 
    .word XT_DOCONDBRANCH
    .word PFA_PRAEFIX0 
    .word XT_EXIT 
PFA_PRAEFIX0:
    .word XT_OVER 
    .word XT_CFETCH 
    .word XT_SETBASE
    .word XT_DOLITERAL
    .word 0x1 
    .word XT_SLASHSTRING 
    .word XT_EXIT 

; (c -- ) Numeric IO
; R( -- )
; set the BASE value depending on the character
;VE_SETBASE:
;    .word 0xFF07 
;    .string "setbase"
;    .word VE_HEAD
;    .set VE_HEAD, VE_SETBASE
XT_SETBASE:
    .word DO_COLON 
PFA_SETBASE:        ; ( c -- ) 
    .word XT_DUP 
    .word XT_DOLITERAL
    .word '$' 
    .word XT_EQUAL 
    .word XT_DOCONDBRANCH
    .word PFA_SETBASE0 
    .word XT_DROP 
    .word XT_HEX 
    .word XT_EXIT 
PFA_SETBASE0:
    .word XT_DUP 
    .word XT_DOLITERAL
    .word '%' 
    .word XT_EQUAL 
    .word XT_DOCONDBRANCH
    .word PFA_SETBASE1 
    .word XT_DROP 
    .word XT_BIN
    .word XT_EXIT 
PFA_SETBASE1:
    .word XT_DUP 
    .word XT_DOLITERAL
    .word '&'
    .word XT_EQUAL 
    .word XT_DOCONDBRANCH
    .word PFA_SETBASE2 
    .word XT_DROP
    .word XT_DECIMAL 
    .word XT_EXIT 
PFA_SETBASE2:        ; ( error) 
    .word XT_DOLITERAL
    .word '#'
    .word XT_EQUAL 
    .word XT_DOCONDBRANCH
    .word PFA_SETBASE3 
    .word XT_DECIMAL 
    .word XT_EXIT 
PFA_SETBASE3:
    .word XT_EXIT 

; (c -- ) Numeric IO
; R( -- )
; set the BASE value depending on the character
;VE_SETBASE:
;    .word 0xFF07 
;    .string "setbase"
;    .word VE_HEAD
;    .set VE_HEAD, VE_SETBASE
XT_NUMBERSIGN:
    .word DO_COLON 
PFA_NUMBERSIGN:        ; ( c -- ) 
    .word XT_OVER
    .word XT_CFETCH
    .word XT_DOLITERAL
    .word '+'
    .word XT_EQUAL
    .word XT_DOCONDBRANCH
    .word PFA_NUMBERSIGN_MINUS
      .word XT_DOLITERAL
      .word 1
      .word XT_SLASHSTRING
PFA_NUMBERSIGN_MINUS:
    .word XT_OVER    ; ( -- addr len addr )
    .word XT_CFETCH
    .word XT_DOLITERAL
    .word '-'
    .word XT_EQUAL  ; ( -- addr len flag )
    .word XT_DUP
    .word XT_TO_R
    .word XT_DOCONDBRANCH
    .word PFA_NUMBERSIGN_PLUS
    .word XT_DOLITERAL      ; skip sign character
    .word 1
    .word XT_SLASHSTRING
PFA_NUMBERSIGN_PLUS:
    .word XT_R_FROM
    .word XT_EXIT
