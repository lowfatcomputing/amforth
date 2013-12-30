; ( -- ) 
; Compiler
; finish a code definition
VE_ENDCODE:
    .word 0xff08
    .ascii "end-code"
    .word VE_HEAD
    .set VE_HEAD, VE_ENDCODE
XT_ENDCODE:
    .word DO_COLON
PFA_ENDCODE:
    .word XT_COMPILE
    .word 0x940c
    .word XT_COMPILE
    .word DO_NEXT
    .word XT_EXIT
