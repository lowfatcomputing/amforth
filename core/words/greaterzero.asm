; ( n1 -- flag ) Compare
; R( -- )
; compare with zero
VE_GREATERZERO:
    .dw $ff02
    .db "0>"
    .dw VE_HEAD
    .set VE_HEAD = VE_GREATERZERO
XT_GREATERZERO:
    .dw PFA_GREATERZERO
PFA_GREATERZERO:
    cp tosl, zerol
    cpc tosh, zeroh
    rjmp PFA_GREATERDONE
