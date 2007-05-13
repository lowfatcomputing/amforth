; ( -- f ) IO
; R( -- )
; refills the input buffer
VE_REFILL:
    .db $06, "refill",0
    .dw VE_HEAD
    .set VE_HEAD = VE_REFILL
XT_REFILL:
    .dw DO_COLON
PFA_REFILL:
    .dw XT_TIB
    .dw XT_DOLITERAL
    .dw 80
    .dw XT_ACCEPT
    .dw XT_NUMBERTIB
    .dw XT_STORE
    .dw XT_ZERO
    .dw XT_G_IN
    .dw XT_STORE
    .dw XT_DOLITERAL
    .dw -1
    .dw XT_EXIT