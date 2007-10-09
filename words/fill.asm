; ( c-addr u c -- ) CORE EXT
; R( -- )
; Fill memory beginning at a-addr with character u
VE_FILL:
    .db $04, "fill",0
    .dw VE_HEAD
    .set VE_HEAD = VE_FILL
XT_FILL:
    .dw DO_COLON
PFA_FILL:
    .dw XT_ROT
    .dw XT_ROT
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_FILL2
PFA_FILL1:
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_CSTORE  ; ( -- c c-addr)
    .dw XT_1PLUS
    .dw XT_DOLOOP
    .dw PFA_FILL1
PFA_FILL2:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT
