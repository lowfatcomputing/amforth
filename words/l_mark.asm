; ( -- addr )
; R( -- )
VE_LMARK:
    .db 5, "<mark"
    .dw VE_HEAD
    .set VE_HEAD = VE_LMARK
XT_LMARK:
    .dw DO_COLON
PFA_LMARK:
    .dw XT_HERE
    .dw XT_EXIT
