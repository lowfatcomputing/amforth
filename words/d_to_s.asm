; ( n1 -- d1 )
; R( -- )
; shrink double cell value to single cell. 
VE_D2S:
    .db $03, "d>s"
    .dw VE_HEAD
    .set VE_HEAD = VE_D2S
XT_D2S:
    .dw DO_COLON
PFA_D2S:
    .dw XT_SWAP
    .dw XT_DROP
    .dw XT_EXIT
