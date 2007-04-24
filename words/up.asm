; ( -- addr ) System
; R( -- )
; get user pointer
VE_UP_FETCH:
    .db $03, "up@"
    .dw VE_HEAD
    .set VE_HEAD = VE_UP_FETCH
XT_UP_FETCH:
    .dw PFA_UP_FETCH
PFA_UP_FETCH:
    savetos
    movw tosl, upl
    rjmp DO_NEXT

; ( addr -- ) System
; R( -- )
; set user pointer
VE_UP_STORE:
    .db $03, "up!"
    .dw VE_HEAD
    .set VE_HEAD = VE_UP_STORE
XT_UP_STORE:
    .dw PFA_UP_STORE
PFA_UP_STORE:
    movw upl, tosl
    loadtos
    rjmp DO_NEXT
