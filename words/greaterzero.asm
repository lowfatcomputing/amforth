; ( n1 -- flag ) Compare
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
    rjmp PFA_GREATERDONE
