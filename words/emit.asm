; ( -- addr )
; R( -- )
; contains the address of the variable that contains the XT of the emit action
VE_TICKEMIT:
    .db $05, $27, "emit"
    .dw VE_HEAD
    .set VE_HEAD = VE_TICKEMIT
XT_TICKEMIT:
    .dw PFA_DOUSER
PFA_TICKEMIT:
    .dw 12

; ( c -- )
; R( -- )
; fetch 'EMIT vector and execute its token if not zero
VE_EMIT:
    .db $04, "emit",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EMIT
XT_EMIT:
    .dw DO_COLON
PFA_EMIT:
    .dw XT_PAUSE
    .dw XT_EMITQ
    .dw XT_DOCONDBRANCH
    .dw PFA_EMIT
    .dw XT_TICKEMIT
    .dw XT_FETCH
    .dw XT_QEXECUTE
    .dw XT_EXIT
