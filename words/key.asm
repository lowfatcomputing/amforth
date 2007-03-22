; ( -- c )
; R( -- )
VE_TICKKEY:
    .db $04, $27, "key",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TICKKEY
XT_TICKKEY:
    .dw PFA_DOUSER
PFA_TICKKEY:
    .dw 16

; fetch 'KEY vector and execute its token
; if not zero
VE_KEY:
    .db $03, "key"
    .dw VE_HEAD
    .set VE_HEAD = VE_KEY
XT_KEY:
    .dw DO_COLON
PFA_KEY:
    .dw XT_TICKKEY
    .dw XT_FETCH
    .dw XT_QEXECUTE
    .dw XT_EXIT
