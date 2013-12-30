; ( xt -- ) 
; Interrupt
; executes an interrupt service routine
;VE_ISREXEC:
;    .word 0xff08
;    .ascii "isr-exec"
;    .word VE_HEAD
;    .set VE_HEAD, VE_ISREXEC
XT_ISREXEC:
    .word DO_COLON
PFA_ISREXEC:
    .word XT_DOLITERAL
    .word intcur
    .word XT_CFETCH
    .word XT_DOLITERAL
    .word intvec
    .word XT_PLUS
    .word XT_FETCH
    .word XT_EXECUTE
    .word XT_ISREND
    .word XT_EXIT
