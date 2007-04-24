; ( n -- ) Compiler
; R( -- )
; define  a new user variable
VE_USER:
    .db $04, "user",0
    .dw VE_HEAD
    .set VE_HEAD = VE_USER
XT_USER:
    .dw DO_COLON
PFA_USER:
    .dw XT_DOCREATE
    .dw XT_COMPILE
    .dw PFA_DOUSER
    .dw XT_COMMA
    .dw XT_EXIT
