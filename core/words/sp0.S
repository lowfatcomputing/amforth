; ( -- addr) 
; Stack
; start address of the data stack
VE_SP0:
    .word 0xff03
    .string "sp0"
    .word VE_HEAD
    .set VE_HEAD, VE_SP0
XT_SP0:
    .word PFA_DOVALUE1
PFA_SP0:
    .word USER_SP0
    .word XT_UVALUEFETCH
    .word XT_UVALUESTORE

; ( -- addr) 
; Stack
; address of user variable to store top-of-stack for inactive tasks
VE_SP:
    .word 0xff02
    .ascii "sp"
    .word VE_HEAD
    .set VE_HEAD, VE_SP
XT_SP:
    .word PFA_DOUSER
PFA_SP:
    .word USER_SP

XT_UVALUEFETCH:
    .word DO_COLON
PFA_UVALUEFETCH:
    .word XT_FETCHI
    .word XT_FETCHU
    .word XT_EXIT

XT_UVALUESTORE:
    .word DO_COLON
PFA_UVALUESTORE:
    .word XT_FETCHI
    .word XT_STOREU
    .word XT_EXIT
