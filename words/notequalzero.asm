; ( n -- flag )
; R( -- )
; compare with zero
VE_NOTEQUALZERO:
    .db $03, "0<>"
    .dw VE_HEAD
    .set VE_HEAD = VE_NOTEQUALZERO
XT_NOTEQUALZERO:
    .dw PFA_NOTEQUALZERO
PFA_NOTEQUALZERO:
    ld temp3, Y+
    ld temp2, Y+
    cp zerol, temp2
    cpc zeroh, temp3
    movw zl, zerol
    breq PFA_NOTEQUALZERO1
    sbiw zl, 1
PFA_NOTEQUALZERO1:
    st -Y, zl
    st -Y, zh
    rjmp DO_NEXT
