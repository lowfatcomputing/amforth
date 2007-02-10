; ( n -- )
; R( -- )
VE_COMMA:
    .db $01, $2c ; ,
    .dw VE_HEAD
    .set VE_HEAD = VE_COMMA
XT_COMMA:
    .dw DO_COLON
PFA_COMMA:
    .dw XT_HERE
    .dw XT_ISTORE
    .dw XT_DOLITERAL
    .dw 1
    .dw XT_ALLOT
    .dw XT_EXIT
