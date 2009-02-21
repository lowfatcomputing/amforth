; ( -- )
; R( -- )
; replace the order list with the system default list
VE_ONLY:
    .dw $ff04
    .db "only"
    .dw VE_HEAD
    .set VE_HEAD = VE_ONLY
XT_ONLY:
    .dw DO_COLON
PFA_ONLY:
    .dw XT_FORTH_WORDLIST
    .dw XT_DOLITERAL
    .dw 1
    .dw XT_SET_ORDER
    .dw XT_EXIT
