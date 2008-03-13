; ( -- ) Compiler
; R( -- )
; everything up to the end of the current line is a comment
VE_BACKSLASH:
    .db $81, "\"
    .dw VE_HEAD
    .set VE_HEAD = VE_BACKSLASH
XT_BACKSLASH:
    .dw DO_COLON
PFA_BACKSLASH:
    .dw XT_NUMBERTIB
    .dw XT_FETCH
    .dw XT_G_IN
    .dw XT_STORE
    .dw XT_EXIT