; ( -- n )  Interrupt
; R( -- )
; number of interrupt vectors (0 based)
VE_NUMINT:
    .db $04, "#int",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NUMINT
XT_NUMINT:
    .dw PFA_DOVARIABLE
PFA_NUMINT:
    .dw INTVECTORS
