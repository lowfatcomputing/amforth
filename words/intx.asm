
.set intcur   = heap ; current interrupt
.set heap     = heap + 1
.set intvec   = heap ; forth interrupt vector (contain the XT)
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

; ( xt i -- )
; R( -- )
; stores XT as interrupt vector i
VE_INTSTORE:
    .db $04, "int!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_INTSTORE
XT_INTSTORE:
    .dw DO_COLON
PFA_INTSTORE:
.if intvecsize == 2
    .dw XT_2STAR
.endif
    .dw XT_DOLITERAL
    .dw intvec
    .dw XT_PLUS
    .dw XT_STORE
    .dw XT_EXIT

; ( i -- xt )
; R( -- )
; fetches XT from interrupt vector i
VE_INTFETCH:
    .db $04, "int@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_INTFETCH
XT_INTFETCH:
    .dw DO_COLON
PFA_INTFETCH:
.if intvecsize == 2
    .dw XT_2STAR
.endif
    .dw XT_DOLITERAL
    .dw intvec
    .dw XT_PLUS
    .dw XT_FETCH
    .dw XT_EXIT

; ( -- n )
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
