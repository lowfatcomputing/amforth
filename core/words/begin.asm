; ( -- addr ) Control Structure
; R( -- )
; start a control structture
VE_BEGIN:
    .db $85, "begin"
    .dw VE_HEAD
    .set VE_HEAD = VE_BEGIN
XT_BEGIN:
    .dw DO_COLON
PFA_BEGIN:
    .dw XT_LMARK
    .dw XT_EXIT
