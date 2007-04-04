; ( n1 -- flag )
; R( -- )
; compare with zero
VE_GREATERZERO:
    .db $02, "0>",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GREATERZERO
XT_GREATERZERO:
    .dw PFA_GREATERZERO
PFA_GREATERZERO:
    cp tosl, zerol
    cpc tosh, zeroh
    movw zl, zerol
    brlt PFA_GREATERZERO1
    brbs 1, PFA_GREATERZERO1
    sbiw zl, 1
PFA_GREATERZERO1:
    movw tosl, zl
    rjmp DO_NEXT
