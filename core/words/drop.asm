; ( n -- ) Stack
; R( -- )
; drop TOS
VE_DROP:
    .dw $ff04
    .db "drop"
    .dw VE_HEAD
    .set VE_HEAD = VE_DROP
XT_DROP:
    .dw PFA_DROP
PFA_DROP:
    loadtos
    rjmp DO_NEXT
