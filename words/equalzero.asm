; ( n -- flag ) Compare
; R( -- )
; compare with 0 (zero)
VE_EQUALZERO:
    .db $02, "0=",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EQUALZERO
XT_EQUALZERO:
    .dw PFA_EQUALZERO
PFA_EQUALZERO:
    or tosh, tosl
    rjmp PFA_EQUALDONE
