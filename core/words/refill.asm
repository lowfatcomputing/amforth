; ( -- f ) 
; System
; refills the input buffer
VE_REFILL:
    .dw $ff06
    .db "refill"
    .dw VE_HEAD
    .set VE_HEAD = VE_REFILL
XT_REFILL:
    .dw DO_COLON
PFA_REFILL:
    .dw XT_TIB
    .dw XT_DOLITERAL
    .dw TIBSIZE
    .dw XT_ACCEPT
    .dw XT_NUMBERTIB
    .dw XT_STORE
    .dw XT_ZERO
    .dw XT_G_IN
    .dw XT_STORE
    .dw XT_DOLITERAL
    .dw -1
    .dw XT_EXIT