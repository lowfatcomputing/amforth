; ( d1 -- addr count ) Numeric IO
; R( -- )
; convert Pictured Numeric Output buffer into an usable string
VE_SHARP_G:
    .dw $ff02
    .db "#>"
    .dw VE_HEAD
    .set VE_HEAD = VE_SHARP_G
XT_SHARP_G:
    .dw DO_COLON
PFA_SHARP_G:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_HLD
    .dw XT_FETCH
    .dw XT_DUP
    .dw XT_PAD
    .dw XT_SWAP
    .dw XT_MINUS
    .dw XT_EXIT
