; ( n -- ) Stack
; R( -- )
; drop TOS
VE_DROP:
    .db $04, "drop", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_DROP
XT_DROP:
    .dw PFA_DROP
PFA_DROP:
    loadtos
    rjmp DO_NEXT
