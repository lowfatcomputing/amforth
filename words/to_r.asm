; ( n -- )
; R:( -- n)
VE_TO_R:
    .db $02, ">r", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_TO_R
XT_TO_R:
    .dw PFA_TO_R
PFA_TO_R:
    ld temp1, Y+
    ld temp0, Y+
    push temp0
    push temp1
    rjmp DO_NEXT
