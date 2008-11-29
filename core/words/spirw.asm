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
