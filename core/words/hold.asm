; ( c -- ) Numeric IO
; R( -- )
; prepend character to pictured numeric output buffer
VE_HOLD:
    .dw $ff04
    .db "hold"
    .dw VE_HEAD
    .set VE_HEAD = VE_HOLD
XT_HOLD:
    .dw DO_COLON
PFA_HOLD:
    ; move characters to the right
    .dw XT_HLD ; from
    .dw XT_1PLUS
    .dw XT_DUP
    .dw XT_1PLUS ; to
    .dw XT_HLD
    .dw XT_CFETCH ; number bytes
    .dw XT_CMOVE_G
    ; increase string length
    .dw XT_HLD
    .dw XT_CFETCH
    .dw XT_1PLUS
    .dw XT_HLD
    .dw XT_CSTORE
    ; store character as the first position
    .dw XT_HLD
    .dw XT_1PLUS
    .dw XT_CSTORE
    .dw XT_EXIT
