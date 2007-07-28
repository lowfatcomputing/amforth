; ( -- addr n ) System
; R( -- )
; address and current length of the input buffer
VE_SOURCE:
    .db 6, "source",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SOURCE
XT_SOURCE:
    .dw DO_COLON
PFA_SOURCE:
    .dw XT_TIB
    .dw XT_NUMBERTIB
    .dw XT_FETCH
    .dw XT_EXIT
