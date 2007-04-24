; ( -- addr ) Control Structure
; R( -- )
; start do .. [+]loop 
VE_DO:
    .db $82, "do",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DO
XT_DO:
    .dw DO_COLON
PFA_DO:
    .dw XT_COMPILE
    .dw XT_DODO
    .dw XT_LMARK
    .dw XT_EXIT
