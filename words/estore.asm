
VE_ESTORE:
    .db $02, "e!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ESTORE
XT_ESTORE:
    .dw PFA_ESTORE
PFA_ESTORE:
    ld zh, Y+
    ld zl, Y+

PFA_ESTORE1:
    in temp0, EECR
    sbrc temp0,EEWE
    rjmp PFA_ESTORE1

PFA_ESTORE2: ; estore_wait_low_spm:
    in temp0, SPMCR
    sbrc temp0,SPMEN
    rjmp PFA_ESTORE2

    out EEARH,zh
    out EEARL,zl
    ld temp1, Y+
    ld temp0, Y+
    out EEDR, temp0

    cli
    sbi EECR,EEMWE
    sbi EECR,EEWE
    sei
  
    adiw zl,1
PFA_ESTORE3:
    in temp0, EECR
    sbrc temp0,EEWE
    rjmp PFA_ESTORE3

PFA_ESTORE4: ; estore_wait_hi_spm:
    in temp0, SPMCR
    sbrc temp0,SPMEN
    rjmp PFA_ESTORE4

    out EEARH,zh
    out EEARL,zl
    out EEDR, temp1

    cli
    sbi EECR,EEMWE
    sbi EECR,EEWE
    sei
    rjmp DO_NEXT
