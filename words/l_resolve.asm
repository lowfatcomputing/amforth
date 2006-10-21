; ( limit counter -- )
; R: ( -- -- limit counter ) == loop-sys
VE_LRESOLVE:
    .db 8, "<resolve",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LRESOLVE
XT_LRESOLVE:
    .dw DO_COLON
PFA_LRESOLVE:
    .dw XT_COMMA
    .dw XT_EXIT
