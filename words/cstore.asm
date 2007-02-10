; ( c addr -- )
; R( -- )
VE_CSTORE:
    .db $02, "c!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CSTORE
XT_CSTORE:
    .dw PFA_CSTORE
PFA_CSTORE:
    ld zh, Y+
    ld zl, Y+
    ld temp1, Y+
    ld temp0, Y+
    st Z, temp0
    rjmp DO_NEXT
