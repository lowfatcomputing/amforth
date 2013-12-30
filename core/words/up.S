; ( -- addr ) 
; System Variable
; get user area pointer
VE_UP_FETCH:
    .word 0xff03
    .string "up@"
    .word VE_HEAD
    .set VE_HEAD, VE_UP_FETCH
XT_UP_FETCH:
    .word PFA_UP_FETCH
PFA_UP_FETCH:
    savetos
    movw tosl, upl
    jmp_ DO_NEXT

; ( addr -- ) 
; System Variable
; set user area pointer
VE_UP_STORE:
    .word 0xff03
    .string "up!"
    .word VE_HEAD
    .set VE_HEAD, VE_UP_STORE
XT_UP_STORE:
    .word PFA_UP_STORE
PFA_UP_STORE:
    movw upl, tosl
    loadtos
    jmp_ DO_NEXT
