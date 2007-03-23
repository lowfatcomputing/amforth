; ( -- f )
; R( -- )
; vector for XT of the word executed when checking for key input. defaults to rx0?
VE_TICKKEYQ:
    .db $05, $27, "key?"
    .dw VE_HEAD
    .set VE_HEAD = VE_TICKKEYQ
XT_TICKKEYQ:
    .dw PFA_DOUSER
PFA_TICKKEYQ:
    .dw 18

; ( -- f)
; R:( -- )
; fetch 'key? vector and execute it if not zero. Leave true if a character can be read, false otherwise
VE_KEYQ:
    .db $04, "key?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_KEYQ
XT_KEYQ:
    .dw DO_COLON
PFA_KEYQ:
    .dw XT_TICKKEYQ
    .dw XT_FETCH
    .dw XT_QEXECUTE
    .dw XT_EXIT
