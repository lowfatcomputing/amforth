; ( xt1 -- xt2 ) System
; R( -- )
; does the real defer@ for ram defers
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
