; ( -- d ) 
; System
; put the cpu frequency in Hz on stack
VE_F_CPU:
    .word 0xff05
    .string "f_cpu"
    .word VE_HEAD
    .set VE_HEAD, VE_F_CPU
XT_F_CPU:
    .word PFA_DOVALUE1
PFA_F_CPU:
    .word EE_FCPU
    .word XT_FETCH2E
    .word XT_STORE2E

XT_FETCH2E:
    .word DO_COLON
PFA_FETCH2E:
    .word XT_FETCHI
    .word XT_DUP
    .word XT_CELLPLUS
    .word XT_FETCHE
    .word XT_SWAP
    .word XT_FETCHE
    .word XT_SWAP
    .word XT_EXIT

XT_STORE2E:
    .word DO_COLON
PFA_STORE2E:
    .word XT_DOLITERAL
    .word -21
    .word XT_THROW

