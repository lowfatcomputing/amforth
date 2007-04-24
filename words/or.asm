; ( n1 n2 -- n3 ) Logic
; R( -- )
; logical or
VE_OR:
    .db $02, "or",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OR
XT_OR:
    .dw PFA_OR
PFA_OR:
    ld temp0, Y+
    ld temp1, Y+
    or tosl, temp0
    or tosh, temp1
    rjmp DO_NEXT

