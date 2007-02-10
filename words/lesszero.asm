; ( n1 -- flag)
; R( -- )
VE_LESSZERO:
    .db $02, "0<",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LESSZERO
XT_LESSZERO:
    .dw PFA_LESSZERO
PFA_LESSZERO:
    ld temp3, Y+
    ld temp2, Y+
    cp temp2, zerol
    cpc temp3, zeroh
    movw zl, zerol
    brge PFA_LESSZERO1
    sbiw zl, 1
PFA_LESSZERO1:
    st -Y, zl
    st -Y, zh
    rjmp DO_NEXT
