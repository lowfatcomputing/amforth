; ( n addr -- ) 
; Memory
; write n to RAM memory at addr, low byte first
VE_STOREU:
    .word 0xff02
    .ascii "!u"
    .word VE_HEAD
    .set VE_HEAD, VE_STOREU
XT_STOREU:
    .word DO_COLON
PFA_STOREU:
    .word XT_UP_FETCH
    .word XT_PLUS
    .word XT_STORE
    .word XT_EXIT
