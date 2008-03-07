; ( -- addr ) System Pointer
; R( -- )
; scratch buffer. 
VE_PAD:
    .db $03, "pad"
    .dw VE_HEAD
    .set VE_HEAD = VE_PAD
XT_PAD:
    .dw DO_COLON
PFA_PAD:
    .dw XT_HEAP
    .dw XT_EFETCH
    .dw XT_DOLITERAL
    .dw 80
    .dw XT_PLUS
    .dw XT_EXIT
