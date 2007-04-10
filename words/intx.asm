
.set intcur   = heap ; current interrupt
.set heap     = heap + 1
.set intvec   = heap ; forth interrupt vector (contains the XT)
.set heap     = heap + INTVECTORS * CELLSIZE

; interrupt routine get called (again) by rcall! This gives the
; address of the int-vector on the stack. 
isr:
    st -Y, r0
    pop r0
    pop r0          ; intnum * intvectorsize + 1 (address following the rcall)
    dec r0
.if intvecsize == 2 ; 
    lsr r0
.endif
    sts intcur, r0
    ld r0, Y+
    set ; set the interrupt flag for the inner interpreter
    reti

VE_INTVECTOR:
    .db $09, "intvector"
    .dw VE_HEAD
    .set VE_HEAD = VE_INTVECTOR
XT_INTVECTOR:
    .dw DO_COLON
PFA_INTVECTOR:
.if intvecsize == 2 
    .dw XT_2STAR
.endif
    .dw XT_DOLITERAL
    .dw intvec
    .dw XT_PLUS
    .dw XT_EXIT

VE_NUMINT:
    .db $06, "numint",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NUMINT
XT_NUMINT:
    .dw PFA_DOVARIABLE
PFA_NUMINT:
    .dw INTVECTORS
