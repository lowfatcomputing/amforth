; ( n addr -- ) 
; Memory
; write 16bit to RAM memory, low byte first
VE_STORE:
    .dw $ff01
    .db "!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_STORE
XT_STORE:
    .dw PFA_STORE
PFA_STORE:
    movw zl, tosl
    loadtos
    std Z+0, tosl
    std Z+1, tosh

    loadtos
    rjmp DO_NEXT
