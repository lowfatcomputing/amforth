; ( -- ) Tools
; R( -- )
; prints a list of all words in the environment
VE_EWORDS:
    .dw $ff06
    .db "ewords"
    .dw VE_HEAD
    .set VE_HEAD = VE_EWORDS
XT_EWORDS:
    .dw DO_COLON
PFA_EWORDS:
    .dw XT_ENVIRONMENT
    .dw XT_SHOWWORDLIST
    .dw XT_EXIT
