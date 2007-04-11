; ( -- f )
; R( -- )
; vector for XT of the word executed when checking for key input. defaults to rx0?
VE_TICKSLASHKEY:
    .db $05, $27, "/key"
    .dw VE_HEAD
    .set VE_HEAD = VE_TICKSLASHKEY
XT_TICKSLASHKEY:
    .dw PFA_DOUSER
PFA_TICKSLASHKEY:
    .dw 20

; ( -- f)
; R:( -- )
; fetch 'key? vector and execute it if not zero. Leave true if a character can be read, false otherwise
VE_SLASHKEY:
    .db $04, "/key",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SLASHKEY
XT_SLASHKEY:
    .dw DO_COLON
PFA_SLASHKEY:
    .dw XT_PAUSE
    .dw XT_TICKSLASHKEY
    .dw XT_FETCH
    .dw XT_QEXECUTE
    .dw XT_EXIT
