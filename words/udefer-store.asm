; ( n <name> -- ) Memory
; R( -- )
;
;VE_UDEFERSTORE:
;    .db $07, "Udefer!"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_UDEFERSTORE
XT_UDEFERSTORE:
    .dw DO_COLON
PFA_UDEFERSTORE:
    .dw XT_1PLUS
    .dw XT_IFETCH
    .dw XT_UP_FETCH
    .dw XT_PLUS
    .dw XT_STORE
    .dw XT_EXIT

