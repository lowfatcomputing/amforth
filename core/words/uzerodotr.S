; ( ud n -- ) 
; Numeric IO
; Print n digits, fill in preceeding zeros if needed
VE_UZERODOTR:
    .word 0xff04
    .ascii "u0.r"
    .word VE_HEAD
    .set VE_HEAD, VE_UZERODOTR
XT_UZERODOTR:
    .word DO_COLON
PFA_UZERODOTR:
    .word XT_TO_R
    .word XT_ZERO
    .word XT_L_SHARP
    .word XT_R_FROM
    .word XT_ZERO
    .word XT_DOQDO
    .word PFA_UZERODOTR2
PFA_UZERODOTR1:
    .word XT_SHARP
    .word XT_DOLOOP
    .word PFA_UZERODOTR1
PFA_UZERODOTR2:
    .word XT_SHARP_G
    .word XT_TYPE
    .word XT_EXIT
; : u0.r      ( u n -- )   >r 0 <# r> 0 ?do # loop #> type ;
