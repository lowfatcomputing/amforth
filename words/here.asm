; ( -- addr ) System Pointer
; R( -- )
; 
VE_HERE:
    .db $04, "here",0
    .dw VE_HEAD
    .set VE_HEAD = VE_HERE
XT_HERE:
    .dw DO_COLON
PFA_HERE:
    .dw XT_DP
    .dw XT_EFETCH
    .dw XT_EXIT
