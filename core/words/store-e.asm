; ( n e-addr -- ) 
; Memory
; write to eeprom address
VE_STOREE:
    .dw $ff02
    .db "!e"
    .dw VE_HEAD
    .set VE_HEAD = VE_STOREE
XT_STOREE:
    .dw PFA_STOREE
PFA_STOREE:
    movw zl, tosl
    loadtos
    in_ temp2, SREG
    cli
    mov temp1, tosl
    rcall PFA_STOREE1
    adiw zl,1

    mov temp1, tosh
    rcall PFA_STOREE1
    out_ SREG, temp2
    loadtos
    rjmp DO_NEXT
    
PFA_STOREE1:
    in_ temp0, EECR
    sbrc temp0,EEPE
    rjmp PFA_STOREE1

PFA_STOREE2: ; estore_wait_low_spm:
    in_ temp0, SPMCSR
    sbrc temp0,SPMEN
    rjmp PFA_STOREE2

    out_ EEARH,zh
    out_ EEARL,zl
    out_ EEDR, temp1
    sbi EECR,EEMPE
    sbi EECR,EEPE

    ret
