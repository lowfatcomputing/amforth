; ( --  )  Interrupt
; R( -- )
; turns on all interrupts
VE_INTON:
    .db $04, "+int",0
    .dw VE_HEAD
    .set VE_HEAD = VE_INTON
XT_INTON:
    .dw PFA_INTON
PFA_INTON:
    sei
    rjmp DO_NEXT
