; ( -- )
; R( -- )
; replace the order list with the system default list
VE_FORTH:
    .dw $ff05
    .db "forth",0
    .dw VE_HEAD
    .set VE_HEAD = VE_FORTH
XT_FORTH:
    .dw DO_COLON
PFA_FORTH:
    .dw XT_FORTH_WORDLIST
    .dw XT_DOLITERAL
    .dw ORDERLIST
    .dw XT_ESTORE
    .dw XT_EXIT
