; ( -- ) MCU
; R( -- )
; disable jtag at runtime
VE_NOJTAG:
    .db 5, "-jtag"
    .dw VE_HEAD
    .set VE_HEAD = VE_NOJTAG
XT_NOJTAG:
    .dw PFA_NOJTAG
PFA_NOJTAG:
    cli
    .if defined MCUCSR
    in_ temp0, MCUCSR
    .else
    in_ temp0, MCUCR
    .endif

    ori temp0, ( 1<<JTD)

    .if defined MCUCSR
    out_ MCUCSR, temp0
    out_ MCUCSR, temp0     ; needs to be done twice within 4 cycles
    .else
    out_ MCUCR, temp0
    out_ MCUCR, temp0     ; needs to be done twice within 4 cycles
    .endif
    sei
    jmp_ DO_NEXT
