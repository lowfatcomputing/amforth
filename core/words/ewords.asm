; ( -- ) Tools
; R( -- )
; emits a list of all (visible) words in the dictionary
VE_EWORDS:
    .dw $ff06
    .db "ewords"
    .dw VE_HEAD
    .set VE_HEAD = VE_EWORDS
XT_EWORDS:
    .dw DO_COLON
PFA_EWORDS:
    .dw XT_ENVHEAD
    .dw XT_SHOWWORDLIST
    .dw XT_EXIT
