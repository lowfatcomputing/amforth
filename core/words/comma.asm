; ( n -- ) Dictionary
; R( -- )
; compile 16 bit into flash at here.
VE_COMMA:
    .db $01, $2c ; ,
    .dw VE_HEAD
    .set VE_HEAD = VE_COMMA
XT_COMMA:
    .dw DO_COLON
PFA_COMMA:
    .dw XT_HERE
    .dw XT_ISTORE
    .dw XT_DP
    .dw XT_EFETCH
    .dw XT_1PLUS
    .dw XT_DP
    .dw XT_ESTORE
    .dw XT_EXIT
