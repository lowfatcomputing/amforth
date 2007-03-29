; ( flag -- flag' )
; R( -- )
; identical to 0=
VE_NOT:
    .db $03, "not"
    .dw VE_HEAD
    .set VE_HEAD = VE_NOT
XT_NOT:
    .dw PFA_NOT
PFA_NOT:
    ld temp1, Y+
    ld temp0, Y+
    or temp0, temp1
    movw zl, zerol
    brne PFA_NOT1
    sbiw zl, 1
PFA_NOT1:
    st -Y, zl
    st -Y, zh
    rjmp DO_NEXT
