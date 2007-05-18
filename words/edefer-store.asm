; ( xt1 xt2 -- ) Memory
; R( -- )
; 
;VE_EDEFERSTORE:
;    .db $07, "Edefer!"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_EDEFERSTORE
XT_EDEFERSTORE:
    .dw DO_COLON
PFA_EDEFERSTORE:
    .dw XT_1PLUS
    .dw XT_IFETCH
    .dw XT_ESTORE
    .dw XT_EXIT
