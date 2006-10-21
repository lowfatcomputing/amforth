; ( limit counter -- )
; R: ( -- -- limit counter ) == loop-sys
VE_GMARK:
    .db 5, ">mark"
    .dw VE_HEAD
    .set VE_HEAD = VE_GMARK
XT_GMARK:
    .dw DO_COLON
PFA_GMARK:
    .dw XT_HERE
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_COMMA
    .dw XT_EXIT
