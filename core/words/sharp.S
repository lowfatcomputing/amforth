; ( d1 -- d2 ) 
; Numeric IO
; pictured numeric output: convert one digit
VE_SHARP:
    .word 0xff01
    .string "#"
    .word VE_HEAD
    .set VE_HEAD, VE_SHARP
XT_SHARP:
    .word DO_COLON
PFA_SHARP:
    .word XT_BASE
    .word XT_FETCH
    .word XT_UDSLASHMOD
    .word XT_ROT
    .word XT_DOLITERAL
    .word 9
    .word XT_OVER
    .word XT_LESS
    .word XT_DOCONDBRANCH
    .word PFA_SHARP1
    .word XT_DOLITERAL
    .word 7
    .word XT_PLUS
PFA_SHARP1:
    .word XT_DOLITERAL
    .word 0x30
    .word XT_PLUS
    .word XT_HOLD
    .word XT_EXIT
; : #    ( ud1 -- ud2 ) 
;        base @ ud/mod rot 9 over < if 7 + then 30 + hold ; 
