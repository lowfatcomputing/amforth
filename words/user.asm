; ( n -- )
; R( -- )
VE_USER:
    .db $04, "user",0
    .dw VE_HEAD
    .set VE_HEAD = VE_USER
XT_USER:
    .dw DO_COLON
PFA_USER:
    .dw XT_BL
    .dw XT_WORD
    .dw XT_DOCREATE
    .dw XT_DOLITERAL
    .dw XT_DOUSER
    .dw XT_COMMA
    .dw XT_COMMA
    .dw XT_EXIT
