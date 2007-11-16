; ( -- c ) Character IO
; R( -- )
; fetch key vector and execute it
VE_KEY:
    .db $03, "key"
    .dw VE_HEAD
    .set VE_HEAD = VE_KEY
XT_KEY:
    .dw PFA_DODEFER
PFA_KEY:
    .dw 18
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE
