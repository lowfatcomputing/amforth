; ( -- addr ) Character IO
; R( -- )
;  contains the address of the variable that contains the XT of the emit? action
VE_TICKEMITQ:
    .db $06, $27, "emit?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TICKEMITQ
XT_TICKEMITQ:
    .dw PFA_DOUSER
PFA_TICKEMITQ:
    .dw 14

; ( -- c) Character IO
; R( -- )
; fetch 'emit? vector and execute its token if not zero
VE_EMITQ:
    .db $05, "emit?"
    .dw VE_HEAD
    .set VE_HEAD = VE_EMITQ
XT_EMITQ:
    .dw DO_COLON
PFA_EMITQ:
    .dw XT_PAUSE
    .dw XT_TICKEMITQ
    .dw XT_FETCH
    .dw XT_QEXECUTE
    .dw XT_EXIT
