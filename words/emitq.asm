; ( -- ) 
VE_TICKEMITQ:
    .db $06, $27, "emit?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TICKEMITQ
XT_TICKEMITQ:
    .dw XT_DOUSER
PFA_TICKEMITQ:
    .dw 14

; fetch 'emit? vector and execute its token
; if not zero
VE_EMITQ:
    .db $05, "emit?"
    .dw VE_HEAD
    .set VE_HEAD = VE_EMITQ
XT_EMITQ:
    .dw DO_COLON
PFA_EMITQ:
    .dw XT_TICKEMITQ
    .dw XT_FETCH
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_EMITQ1
    .dw XT_EXECUTE
PFA_EMITQ1:
    .dw XT_EXIT
