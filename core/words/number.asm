; (addr -- n ) Numeric IO
; R( -- )
; convert a counted string at addr to a number, throw exception -13 on error
VE_NUMBER:
    .dw $ff06
    .db "number"
    .dw VE_HEAD
    .set VE_HEAD = VE_NUMBER
XT_NUMBER:
    .dw DO_COLON
PFA_NUMBER:
    .dw XT_BASE
    .dw XT_FETCH
    .dw XT_TO_R
    .dw XT_COUNT   ; ( -- addr len )
; now check for +/- signs
    .dw XT_OVER    ; ( -- addr len addr )
    .dw XT_CFETCH
    .dw XT_DOLITERAL
    .dw $2d ; '-'
    .dw XT_EQUAL  ; ( -- addr len flag )
    .dw XT_DUP
    .dw XT_TO_R   ; save the is-negative flag
    .dw XT_DOCONDBRANCH
    .dw PFA_NUMBER0
    .dw XT_DOLITERAL      ; skip sign character
    .dw 1
    .dw XT_SLASHSTRING

PFA_NUMBER0: ; ( addr len  -- )    
    .dw XT_PRAEFIX
    .dw XT_TO_R
    .dw XT_TO_R
    .dw XT_ZERO       ; starting value
    .dw XT_ZERO
    .dw XT_R_FROM
    .dw XT_R_FROM
    .dw XT_TO_NUMBER
    .dw XT_DOCONDBRANCH
    .dw PFA_NUMBER1
        .dw XT_DOLITERAL
        .dw -13
        .dw XT_THROW
PFA_NUMBER1:
    .dw XT_DROP ; remove the address
    .dw XT_DROP ; make it a single cell value
    ; incorporate sign into number
    .dw XT_R_FROM
    .dw XT_DOCONDBRANCH
    .dw PFA_NUMBER5
    .dw XT_NEGATE
PFA_NUMBER5:
    .dw XT_R_FROM
    .dw XT_BASE
    .dw XT_STORE
    .dw XT_EXIT

;VE_SETBASE:
;    .dw $FF07 
;    .db "setbase",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_SETBASE
XT_SETBASE:
    .dw DO_COLON 
PFA_SETBASE:        ; ( c -- ) 
    .dw XT_DUP 
    .dw XT_DOLITERAL
    .dw $24 
    .dw XT_EQUAL 
    .dw XT_DOCONDBRANCH
    .dw PFA_SETBASE0 
    .dw XT_DROP 
    .dw XT_HEX 
    .dw XT_EXIT 
PFA_SETBASE0:
    .dw XT_DUP 
    .dw XT_DOLITERAL
    .dw $25 
    .dw XT_EQUAL 
    .dw XT_DOCONDBRANCH
    .dw PFA_SETBASE1 
    .dw XT_DROP 
    .dw XT_BIN
    .dw XT_EXIT 
PFA_SETBASE1:
    .dw XT_DOLITERAL
    .dw $26 
    .dw XT_EQUAL 
    .dw XT_DOCONDBRANCH
    .dw PFA_SETBASE2 
    .dw XT_DECIMAL 
    .dw XT_EXIT 
PFA_SETBASE2:        ; ( error) 
    .dw XT_EXIT 


;VE_PRAEFIX:
;    .dw $FF07 
;    .db "praefix",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_PRAEFIX
XT_PRAEFIX:
    .dw DO_COLON 
PFA_PRAEFIX:        ; ( adr1 len1 -- adr2 len2 ) 
    .dw XT_OVER 
    .dw XT_CFETCH 
    .dw XT_DOLITERAL
    .dw $29 
    .dw XT_GREATER 
    .dw XT_DOCONDBRANCH
    .dw PFA_PRAEFIX0 
    .dw XT_EXIT 
PFA_PRAEFIX0:
    .dw XT_OVER 
    .dw XT_CFETCH 
    .dw XT_SETBASE
    .dw XT_DOLITERAL
    .dw $1 
    .dw XT_SLASHSTRING 
    .dw XT_EXIT 

