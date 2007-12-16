; ( n1 -- n2 ) MCU
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
    in_ temp0, MCUCR
    ori temp0, ( 1<<JTD)
    out_ MCUCR, temp0
    out_ MCUCR, temp0     ; needs to be done twice within 4 cycles
    sei
    rjmp DO_NEXT
