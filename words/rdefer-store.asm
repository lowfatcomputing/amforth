; ( xt1 xt2 -- ) System
; R( -- )
; does the real defer! for ram defers
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

