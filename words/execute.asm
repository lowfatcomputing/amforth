; ( xt -- )
; R: ( -- )
VE_EXECUTE:
    .db $07, "execute"
    .dw VE_HEAD
    .set VE_HEAD = VE_EXECUTE
XT_EXECUTE:
    .dw PFA_EXECUTE
PFA_EXECUTE:
    ld wh, Y+
    ld wl, Y+
    rjmp DO_EXECUTE
