; ( -- addr n ) 
; System
; address and current length of the input buffer
VE_SOURCE:
    .dw $FF06
    .db "source"
    .dw VE_HEAD
    .set VE_HEAD = VE_SOURCE
XT_SOURCE:
    .dw DO_COLON
PFA_SOURCE:
    .dw XT_TIB
    .dw XT_NUMBERTIB
    .dw XT_FETCH
    .dw XT_EXIT
