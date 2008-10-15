; ( d1 -- d2 ) Arithmetics
; R( -- )
; double cell invert
VE_DINVERT:
    .db $07, "dinvert"
    .dw VE_HEAD
    .set VE_HEAD = VE_DINVERT
XT_DINVERT:
    .dw DO_COLON
PFA_DINVERT:
    .dw XT_SWAP
    .dw XT_INVERT
    .dw XT_SWAP
    .dw XT_INVERT
    .dw XT_EXIT

; : dinvert   ( ud1 -- ud2 ) swap invert swap invert ; 

