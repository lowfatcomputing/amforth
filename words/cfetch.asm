; ( addr - c1 )
; R( -- )
; fetch a single byte from RAM (or IO or CPU register)
VE_CFETCH:
    .db $02, "c@",0
    .dw VE_HEAD
    .set VE_HEAD  = VE_CFETCH
XT_CFETCH:
    .dw PFA_CFETCH
PFA_CFETCH:
    ld zh, Y+
    ld zl, Y+
    ld temp0, Z
    st -Y, temp0
    st -Y, zeroh
    rjmp DO_NEXT
