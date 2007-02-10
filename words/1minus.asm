; ( n1 -- n2 )
; R( -- )
VE_1MINUS:
    .db $02, "1-",0
    .dw VE_HEAD
    .set VE_HEAD = VE_1MINUS
XT_1MINUS:
    .dw PFA_1MINUS
PFA_1MINUS:
    ld zh, Y+
    ld zl, Y+
    sbiw zl, 1
    st -Y, zl
    st -Y, zh
    rjmp DO_NEXT
