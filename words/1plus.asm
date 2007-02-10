; ( n1 -- n2 )
; R( -- )
VE_1PLUS:
    .db $02, "1+",0
    .dw VE_HEAD
    .set VE_HEAD = VE_1PLUS
XT_1PLUS:
    .dw PFA_1PLUS
PFA_1PLUS:
    ld zh, Y+
    ld zl, Y+
    adiw zl,1
    st -Y, zl
    st -Y, zh
    rjmp DO_NEXT
