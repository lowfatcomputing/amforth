; ( -- c ) Character IO
; R( -- )
; fetch 'KEY vector and execute its token if not zero
VE_KEY:
    .db $03, "key"
    .dw VE_HEAD
    .set VE_HEAD = VE_KEY
XT_KEY:
    .dw PFA_DODEFER
PFA_KEY:
    .dw 16
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE
