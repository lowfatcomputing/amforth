; ( -- c) Character IO
; R( -- )
; fetch emit? vector and execute it
VE_EMITQ:
    .db $05, "emit?"
    .dw VE_HEAD
    .set VE_HEAD = VE_EMITQ
XT_EMITQ:
    .dw PFA_DODEFER
PFA_EMITQ:
    .dw 16
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE
