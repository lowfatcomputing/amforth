; ( n <name> -- ) Memory
; R( -- )
; 
;VE_RDEFERSTORE:
;    .db $07, "Rdefer!"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_RDEFERSTORE
XT_RDEFERSTORE:
    .dw DO_COLON
PFA_RDEFERSTORE:
    .dw XT_1PLUS
    .dw XT_IFETCH
    .dw XT_STORE
    .dw XT_EXIT

