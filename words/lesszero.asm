; ( n1 -- flag) Compare
; R( -- )
; compare with zero
VE_LESSZERO:
    .db $02, "0<",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LESSZERO
XT_LESSZERO:
    .dw PFA_LESSZERO
PFA_LESSZERO:
    cp tosl, zerol
    cpc tosh, zeroh
    movw zl, zerol
    brge PFA_LESSZERO1
    sbiw zl, 1
PFA_LESSZERO1:
    movw tosl, zl
    rjmp DO_NEXT
