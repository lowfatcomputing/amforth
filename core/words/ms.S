; ( n -- ) 
; Time
; busy waits the specified amount of milliseconds
VE_MS:
    .word 0xff02
    .ascii "ms"
    .word VE_HEAD
    .set VE_HEAD, VE_MS
XT_MS:
    .word DO_COLON
PFA_MS:
    .word XT_ZERO
    .word XT_DOQDO
    .word PFA_MS2
PFA_MS1:
    .word XT_1MS
    .word XT_DOLOOP
    .word PFA_MS1
PFA_MS2:
    .word XT_EXIT
