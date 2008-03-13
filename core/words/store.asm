; ( n addr -- ) Memory
; R( -- )
; write 16bit to RAM memory (or IO or CPU registers)
VE_STORE:
    .db $01, "!"
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
