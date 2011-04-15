; ( sreg -- ) 
; Interrupt
; restores SREG from TOS
;VE_INTRESTORE:
;    .dw $ff0B
;    .db "int_restore"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_INTRESTORE
XT_INTRESTORE:
    .dw PFA_INTRESTORE
PFA_INTRESTORE:
    out SREG, tosl
    loadtos
    jmp_ DO_NEXT
