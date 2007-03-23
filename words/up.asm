; ( -- addr )
; R( -- )
VE_UP_FETCH:
    .db $03, "up@"
    .dw VE_HEAD
    .set VE_HEAD = VE_UP_FETCH
XT_UP_FETCH:
    .dw PFA_UP_FETCH
PFA_UP_FETCH:
    st -Y, upl
    st -Y, uph
    rjmp DO_NEXT

; ( addr -- )
; R( -- )
VE_UP_STORE:
    .db $03, "up!"
    .dw VE_HEAD
    .set VE_HEAD = VE_UP_STORE
XT_UP_STORE:
    .dw PFA_UP_STORE
PFA_UP_STORE:
    ld uph, Y+
    ld upl, Y+
    rjmp DO_NEXT
