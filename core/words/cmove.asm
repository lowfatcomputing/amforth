; (addr-from addr-to n -- ) Memory
; R( -- )
; copy data in RAM
VE_CMOVE:
    .dw $ff05
    .db "cmove",0
    .dw VE_HEAD
    .set VE_HEAD  = VE_CMOVE
XT_CMOVE:
    .dw PFA_CMOVE
PFA_CMOVE:
    push xh
    push xl
    movw wl, tosl
    ld zl, Y+
    ld zh, Y+ ; addr-to
    ld xl, Y+
    ld xh, Y+ ; addr-from
    mov temp0, wh
    or temp0, wl
    brbs 1, PFA_CMOVE1
PFA_CMOVE2:
    ld temp1, X+
    st Z+, temp1
    sbiw wl, 1
    brbc 1, PFA_CMOVE2
PFA_CMOVE1:
    pop xl
    pop xh
    loadtos
    rjmp DO_NEXT
