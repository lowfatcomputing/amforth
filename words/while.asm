; ( dest -- orig dest )
; R( -- )
VE_WHILE:
    .db $85, "while"
    .dw VE_HEAD
    .set VE_HEAD = VE_WHILE
XT_WHILE:
    .dw DO_COLON
PFA_WHILE:
    .dw XT_DOLITERAL
    .dw XT_DOCONDBRANCH
    .dw XT_COMMA
    .dw XT_GMARK
    .dw XT_SWAP
    .dw XT_EXIT
