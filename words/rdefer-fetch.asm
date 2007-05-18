; ( n <name> -- ) Memory
; R( -- )
; 
;VE_RDEFERFETCH:
;    .db $07, "Rdefer@"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_RDEFERFETCH
XT_RDEFERFETCH:
    .dw DO_COLON
PFA_RDEFERFETCH:
    .dw XT_1PLUS ; >body
    .dw XT_IFETCH
    .dw XT_FETCH
    .dw XT_EXIT
