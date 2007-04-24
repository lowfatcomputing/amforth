; ( -- addr ) Numeric IO
; R( -- )
; address of buffer for pictured numeric output
VE_HLD:
    .db $03, "hld"
    .dw VE_HEAD
    .set VE_HEAD = VE_HLD
XT_HLD:
    .dw DO_COLON
PFA_HLD:
    .dw XT_PAD
    .dw XT_EXIT