; ( addr n -- ) Character IO
; R( -- )
; emits a string
VE_TYPE:
    .db $04, "type",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TYPE
XT_TYPE:
    .dw DO_COLON
PFA_TYPE:
    .dw XT_QDUP
    .dw XT_NOTEQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_TYPE2
    .dw XT_ZERO
    .dw XT_DODO
PFA_TYPE1:
    .dw XT_DUP
    .dw XT_I
    .dw XT_PLUS
    .dw XT_CFETCH
    .dw XT_EMIT
    .dw XT_DOLOOP
    .dw PFA_TYPE1
PFA_TYPE2:
    .dw XT_DROP
    .dw XT_EXIT
