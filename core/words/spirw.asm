; ( txbyte -- rxbyte) MCU
; R( -- )
; SPI exchange of 1 byte
VE_SPIRW:
    .dw $ff05
    .db "spirw",0
    .dw VE_HEAD
    .set VE_HEAD  = VE_SPIRW
XT_SPIRW:
    .dw PFA_SPIRW
PFA_SPIRW:
    rcall do_spirw
    clr tosh
    jmp_ DO_NEXT

do_spirw:
    out_ SPDR, tosl
do_spirw1:
    in_ temp0, SPSR
    sbrs temp0, 7
    rjmp do_spirw1   ; wait until complete
    in_ tosl, SPDR
    ret

; (  addr len -- ) MCU
; R( -- )
; transfer many bytes via spi.
VE_SPIRWN:
    .db $05, "spirwn"
    .dw VE_HEAD
    .set VE_HEAD  = VE_SPIRWN
XT_SPIRWN:
    .dw PFA_SPIRWN
PFA_SPIRWM:
    movw temp0, tosl
    loadtos
    movw zl, tosl
spirwn_loop:
    or temp0, temp1
    brz spirwn_done
    ld tosl, Z
    rcall do_spirw
    st Z+, tosl
    sbiw temp0, 1
    rjmp spirwn_loop
spirwn_done:
    loadtos
    jmp_ DO_NEXT
