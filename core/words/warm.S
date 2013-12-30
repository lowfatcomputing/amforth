; ( nx* -- ) (R: ny* -- )
; System
; initialize amforth further. executes turnkey operation and go to quit
VE_WARM:
    .word 0xff04
    .ascii "warm"
    .word VE_HEAD
    .set VE_HEAD, VE_WARM
XT_WARM:
    .word DO_COLON
PFA_WARM:
    .word XT_INITUSER
    .word XT_DOLITERAL
    .word XT_NOOP
    .word XT_DOLITERAL
    .word XT_PAUSE
    .word XT_DEFERSTORE
    .word XT_TURNKEY
    .word XT_QUIT
    .word XT_EXIT
