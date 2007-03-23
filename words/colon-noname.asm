; ( -- )
; R( -- ) 
VE_COLONNONAME:
    .db $7, ":noname"
    .dw VE_HEAD
    .set VE_HEAD = VE_COLONNONAME
XT_COLONNONAME:
    .dw DO_COLON
PFA_COLONNONAME:
    .dw XT_HERE
    .dw XT_COMPILE
    .dw DO_COLON
    .dw XT_RBRACKET
    .dw XT_EXIT
