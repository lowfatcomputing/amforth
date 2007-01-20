; ( -- ) 
VE_TICKKEYQ:
    .db $05, $27, "key?"
    .dw VE_HEAD
    .set VE_HEAD = VE_TICKKEYQ
XT_TICKKEYQ:
    .dw XT_DOUSER
PFA_TICKKEYQ:
    .dw 12

; fetch 'KEYQ vector and execute its token
; if not zero
VE_KEYQ:
    .db $04, "key?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_KEYQ
XT_KEYQ:
    .dw DO_COLON
PFA_KEYQ:
    .dw XT_TICKKEYQ
    .dw XT_FETCH
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_KEYQ1
    .dw XT_EXECUTE
PFA_KEYQ1:
    .dw XT_EXIT
