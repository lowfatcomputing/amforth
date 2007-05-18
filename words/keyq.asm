; ( -- f) Character IO
; R( -- )
; fetch 'key? vector and execute it if not zero. Leave true if a character can be read, false otherwise
VE_KEYQ:
    .db $04, "key?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_KEYQ
XT_KEYQ:
    .dw PFA_DODEFER
PFA_KEYQ:
    .dw 18
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE
