; ( -- ) Dictionary
; R( -- )
; create a complete dictionary header.
VE_CREATE:
    .db $6, "create",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CREATE
XT_CREATE:
    .dw DO_COLON
PFA_CREATE:
    .dw XT_DOCREATE
    .dw XT_COMPILE
    .dw XT_DOCONSTANT
    .dw XT_EXIT
