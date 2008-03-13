; ( addr - c1 ) Memory
; R( -- )
; fetch a single byte from RAM (or IO or CPU register)
VE_CFETCH:
    .db $02, "c@",0
    .dw VE_HEAD
    .set VE_HEAD  = VE_CFETCH
XT_CFETCH:
    .dw PFA_CFETCH
PFA_CFETCH:
    movw zl, tosl
    clr tosh
    ld tosl, Z
    rjmp DO_NEXT
