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
    .dw XT_COUNT   ; ( -- addr len )
    .dw XT_OVER    ; ( -- addr char addr )
    .dw XT_CFETCH
    ; now check for +/- signs
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
    .dw XT_ZERO       ; starting value
    .dw XT_ROT
    .dw XT_ROT
    .dw XT_ZERO       ; ( -- n addr' len 0)
    .dw XT_DOQDO
    .dw PFA_NUMBER6
PFA_NUMBER1: ; ( -- n addr )
    .dw XT_DUP
    .dw XT_I
    .dw XT_PLUS
    .dw XT_CFETCH  ; ( -- n addr char )
    .dw XT_DIGITQ
    .dw XT_EQUALZERO
    ; check for non number characters and stop converting if found
    .dw XT_DOCONDBRANCH
    .dw PFA_NUMBER3
    .dw XT_DOLITERAL
    .dw -13
    .dw XT_THROW
PFA_NUMBER3:
    .dw XT_ROT   ; ( -- addr digit n )
    .dw XT_BASE
    .dw XT_FETCH
    .dw XT_STAR
    .dw XT_PLUS
    .dw XT_SWAP  ; ( -- n addr )
PFA_NUMBER4:
    .dw XT_DOLOOP
    .dw PFA_NUMBER1
PFA_NUMBER6:
    .dw XT_DROP
    ; incorporate sign into number
    .dw XT_R_FROM
    .dw XT_DOCONDBRANCH
    .dw PFA_NUMBER5
    .dw XT_NEGATE
PFA_NUMBER5:
    .dw XT_EXIT
