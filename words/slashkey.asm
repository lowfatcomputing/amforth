; ( -- f) Character IO
; R( -- )
; fetch 'key? vector and execute it if not zero. Leave true if a character can be read, false otherwise
VE_SLASHKEY:
    .db $04, "/key",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SLASHKEY
XT_SLASHKEY:
    .dw PFA_DODEFER
PFA_SLASHKEY:
    .dw 20
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE
