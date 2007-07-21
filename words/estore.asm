; ( n addr -- ) Memory
; R( -- )
; write to eeprom address
VE_ESTORE:
    .db $02, "e!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ESTORE
XT_ESTORE:
    .dw PFA_ESTORE
PFA_ESTORE:
    movw zl, tosl
    loadtos
    
    mov temp1, tosl
    rcall PFA_ESTORE1
    adiw zl,1

    mov temp1, tosh
    rcall PFA_ESTORE1
    
    loadtos
    rjmp DO_NEXT
    
PFA_ESTORE1:
    in_ temp0, EECR
    sbrc temp0,EEWE
    rjmp PFA_ESTORE1

PFA_ESTORE2: ; estore_wait_low_spm:
    in_ temp0, SPMCR
    sbrc temp0,SPMEN
    rjmp PFA_ESTORE2

    out_ EEARH,zh
    out_ EEARL,zl

    out_ EEDR, temp1
    in_ temp2, SREG
    cli
    sbi EECR,EEMWE
    sbi EECR,EEWE
    out_ SREG, temp2
    ret

