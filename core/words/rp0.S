; ( -- addr) 
; Stack
; start address of return stack
VE_RP0:
    .word 0xff03
    .string "rp0"
    .word VE_HEAD
    .set VE_HEAD, VE_RP0
XT_RP0:
    .word DO_COLON
PFA_RP0:
    .word XT_DORP0
    .word XT_FETCH
    .word XT_EXIT

; ( -- addr) 
; Stack
; user variable of the address of the initial return stack
;VE_DORP0:
;    .word 0xff05
;    .ascii "(rp0)"
;    .word VE_HEAD
;    .set VE_HEAD, VE_DORP0
XT_DORP0:
    .word PFA_DOUSER
PFA_DORP0:
    .word USER_RP
