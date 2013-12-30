; ( c -- (number|) flag ) 
; Numeric IO
; tries to convert a character to a number, set flag accordingly
VE_DIGITQ:
    .word 0xff06 
    .ascii "digit?"
    .word VE_HEAD
    .set VE_HEAD, VE_DIGITQ
XT_DIGITQ:
    .word DO_COLON 
PFA_DIGITQ:
    .word XT_TOUPPER
    .word XT_DOLITERAL 
    .word 0x30 
    .word XT_MINUS 
    .word XT_DUP 
    .word XT_DOLITERAL
    .word 0x09 
    .word XT_UGREATER 
    .word XT_DOCONDBRANCH
    .word PFA_DIGITQ0 
    .word XT_DOLITERAL
    .word 0x07 
    .word XT_MINUS 
    .word XT_DUP 
    .word XT_DOLITERAL
    .word 0x09 
    .word XT_ULESSEQUAL
    .word XT_DOCONDBRANCH
    .word PFA_DIGITQ1 
    .word XT_DROP 
    .word XT_ZERO
    .word XT_EXIT 
PFA_DIGITQ1:
PFA_DIGITQ0:
    .word XT_DUP 
    .word XT_BASE 
    .word XT_FETCH 
    .word XT_UGREATEREQUAL
    .word XT_DOCONDBRANCH
    .word PFA_DIGITQ2 
    .word XT_DROP 
    .word XT_ZERO
    .word XT_EXIT 
PFA_DIGITQ2:
    .word XT_TRUE
    .word XT_EXIT 

; ( u1 u2 -- flag ) 
; Compare
; compare two unsigned numbers, returns true flag if u1 is less then or equal to u2
VE_ULESSEQUAL:
    .word 0xff03 
    .string "u<="
    .word VE_HEAD
    .set VE_HEAD, VE_ULESSEQUAL
XT_ULESSEQUAL:
    .word DO_COLON 
PFA_ULESSEQUAL:
    .word XT_UGREATER 
    .word XT_INVERT 
    .word XT_EXIT 

; ( u1 u2 -- flag ) 
; Compare
; compare two unsigned numbers, returns true flag if u1 is greater then or equal to u2
VE_UGREATEREQUAL:
    .word 0xff03 
    .string "u>="
    .word VE_HEAD
    .set VE_HEAD, VE_UGREATEREQUAL
XT_UGREATEREQUAL:
    .word DO_COLON 
PFA_UGREATEREQUAL:
    .word XT_ULESS 
    .word XT_INVERT 
    .word XT_EXIT 
