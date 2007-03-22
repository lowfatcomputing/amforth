; ( c -- )
; R( -- )
VE_TICKEMIT:
    .db $05, $27, "emit"
    .dw VE_HEAD
    .set VE_HEAD = VE_TICKEMIT
XT_TICKEMIT:
    .dw PFA_DOUSER
PFA_TICKEMIT:
    .dw 12

; fetch 'EMIT vector and execute its token
; if not zero
VE_EMIT:
    .db $04, "emit",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EMIT
XT_EMIT:
    .dw DO_COLON
PFA_EMIT:
    .dw XT_TICKEMIT
    .dw XT_FETCH
    .dw XT_QEXECUTE
    .dw XT_EXIT
