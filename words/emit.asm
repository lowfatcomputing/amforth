; ( -- ) 
VE_TICKEMIT:
    .db $05, $27, "emit"
    .dw VE_HEAD
    .set VE_HEAD = VE_TICKEMIT
XT_TICKEMIT:
    .dw XT_DOUSER
PFA_TICKEMIT:
    .dw 8

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
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_EMIT1
    .dw XT_EXECUTE
PFA_EMIT1:
    .dw XT_EXIT
