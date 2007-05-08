
.set intcur   = heap ; current interrupt
.set heap     = heap + 1
.set intvec   = heap ; forth interrupt vector (contain the XT)
.set heap     = heap + INTVECTORS * CELLSIZE

; interrupt routine gets called (again) by rcall! This gives the
; address of the int-vector on the stack.
isr:
    st -Y, r0
    in r0, SREG
    st -Y, r0
    pop r0
    pop r0          ; = intnum * intvectorsize + 1 (address following the rcall)
    dec r0
.if intvecsize == 1 ;
    lsl r0
.endif
    sts intcur, r0
    ld r0, Y+
    out SREG, r0
    ld r0, Y+
    set ; set the interrupt flag for the inner interpreter
    reti ; returns the interrupt, the rcall stack frame is removed!

; ( xt i -- )  Interrupt
; R( -- )
; stores XT as interrupt vector i
VE_INTSTORE:
    .db $04, "int!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_INTSTORE
XT_INTSTORE:
    .dw DO_COLON
PFA_INTSTORE:
    .dw XT_2STAR
    .dw XT_DOLITERAL
    .dw intvec
    .dw XT_PLUS
    .dw XT_STORE
    .dw XT_EXIT

; ( i -- xt ) Interrupt
; R( -- )
; fetches XT from interrupt vector i
VE_INTFETCH:
    .db $04, "int@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_INTFETCH
XT_INTFETCH:
    .dw DO_COLON
PFA_INTFETCH:
    .dw XT_2STAR
    .dw XT_DOLITERAL
    .dw intvec
    .dw XT_PLUS
    .dw XT_FETCH
    .dw XT_EXIT

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


; ( -- sreg ) Interrupt
; R( -- )
; turns off all interrupts and leaves SREG in TOS
VE_INTOFF:
    .db $04, "/int",0
    .dw VE_HEAD
    .set VE_HEAD = VE_INTOFF
XT_INTOFF:
    .dw PFA_INTOFF
PFA_INTOFF:
    savetos
    clr tosh
    in tosl, SREG
    cli
    jmp_ DO_NEXT

; ( --  )  Interrupt
; R( -- )
; turns on all interrupts
VE_INTON:
    .db $03, "int"
    .dw VE_HEAD
    .set VE_HEAD = VE_INTON
XT_INTON:
    .dw PFA_INTON
PFA_INTON:
    sei
    jmp_ DO_NEXT

; ( sreg -- ) Interrupt
; R( -- )
; restores SREG from TOS (
;VE_INTRESTORE:
;    .db $0B, "int_restore"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_INTRESTORE
XT_INTRESTORE:
    .dw PFA_INTRESTORE
PFA_INTRESTORE:
    out SREG, tosl
    loadtos
    jmp_ DO_NEXT
