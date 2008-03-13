; ( n -- n n ) Stack
; R( -- )
; duplicate TOS
VE_DUP:
    .db $03, "dup"
    .dw VE_HEAD
    .set VE_HEAD = VE_DUP
XT_DUP:
    .dw PFA_DUP
PFA_DUP:
    savetos
    rjmp DO_NEXT
