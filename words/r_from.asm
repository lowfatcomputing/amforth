; ( -- n)
; R: (n --)
VE_R_FROM:
    .db $02, "r>", 0
    .dw VE_LATEST
    .set VE_LATEST = VE_R_FROM
XT_R_FROM:
    .dw PFA_R_FROM
PFA_R_FROM:
    pop temp1
    pop temp0
    st -Y, temp0
    st -Y, temp1
    rjmp DO_NEXT
