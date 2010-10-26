; ( -- ) Dictionary
; R( -- )
; create a dictionary header. XT is (constant)
VE_CREATE:
    .dw $ff06
    .db "create"
    .dw VE_HEAD
    .set VE_HEAD = VE_CREATE
XT_CREATE:
    .dw DO_COLON
PFA_CREATE:
    .dw XT_DOCREATE
    .dw XT_GET_CURRENT
    .dw XT_ESTORE
    .dw XT_COMPILE
    .dw PFA_DOCONSTANT
    .dw XT_EXIT
