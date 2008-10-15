; ( ud -- ) Numeric IO
; R( -- )
; unsigned double cell output 
VE_UDDOT:
    .db $03, "ud."
    .dw VE_HEAD
    .set VE_HEAD = VE_UDDOT
XT_UDDOT:
    .dw DO_COLON
PFA_UDDOT:
    .dw XT_ZERO
    .dw XT_UDDOTR
    .dw XT_SPACE
    .dw XT_EXIT
; : ud.       ( ud -- )    0 ud.r space ;
