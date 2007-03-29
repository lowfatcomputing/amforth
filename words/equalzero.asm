; ( n -- flag )
; R( -- )
; compare with 0 (zero)
VE_EQUALZERO:
    .db $02, "0=",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EQUALZERO
XT_EQUALZERO:
    .dw PFA_EQUALZERO
PFA_EQUALZERO:
    ld temp3, Y+
    ld temp2, Y+
    cp zerol, temp2
    cpc zeroh, temp3
    movw zl, zerol
    brne PFA_EQUALZERO1
    sbiw zl, 1
PFA_EQUALZERO1:
    st -Y, zl
    st -Y, zh
    rjmp DO_NEXT
