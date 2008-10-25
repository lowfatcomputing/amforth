; ( n -- ) Dictionary
; R( -- )
; compile 16 bit into flash at here.
VE_COMMA:
    .dw $ff01
    .db $2c,0 ; ,
    .dw VE_HEAD
    .set VE_HEAD = VE_COMMA
XT_COMMA:
    .dw DO_COLON
PFA_COMMA:
    .dw XT_HERE
    .dw XT_ISTORE
    .dw XT_HERE
    .dw XT_1PLUS
    .dw XT_DOTO
    .dw PFA_HERE
    .dw XT_EXIT
