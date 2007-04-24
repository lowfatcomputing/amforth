; ( -- 0 ) Control Structure
; R( -- )
; 
VE_CASE:
    .db $84, "case",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CASE
XT_CASE:
    .dw DO_COLON
PFA_CASE:
    .dw XT_ZERO
    .dw XT_EXIT
