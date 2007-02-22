
.equ INTVECTORS = 4 ; only a few interrupts for now

.set intcur   = heap ; current interrupt
.set heap     = heap + 1
.set intcount = heap ; interrupt counter, incremented for every int
.set heap     = heap + INTVECTORS
.set intvec   = heap ; forth interrupt vector (contains the XT)
.set heap     = heap + INTVECTORS * CELLSIZE

; map avr interrupts to amforth interrupts
int0_isr:
    push yl
    ldi yl, 0
    rjmp intx_isr

int1_isr:
    push yl
    ldi yl, 1
    rjmp intx_isr

int2_isr:
    push yl
    ldi yl, 2
    rjmp intx_isr

int3_isr:
    push yl
    ldi yl, 3
    rjmp intx_isr

intx_isr:
    sts intcur, yl
    push yh
    in yh,SREG
    push yh
    lds yh, intcount
    add yh, yl
    sts intcount, yh
    pop yh
    out SREG,yh
    pop yh
    pop yl
    set ; set the interrupt flag for the inner interpreter
    reti

VE_INTCOUNTER:
    .db $0a, "intcounter",0
    .dw VE_HEAD
    .set VE_HEAD = VE_INTCOUNTER
XT_INTCOUNTER:
    .dw DO_COLON
PFA_INTCOUNTER:
    .dw XT_DOLITERAL
    .dw intcount
    .dw XT_PLUS
    .dw XT_EXIT

VE_INTVECTOR:
    .db $09, "intvector"
    .dw VE_HEAD
    .set VE_HEAD = VE_INTVECTOR
XT_INTVECTOR:
    .dw DO_COLON
PFA_INTVECTOR:
    .dw XT_2STAR
    .dw XT_DOLITERAL
    .dw intvec
    .dw XT_PLUS
    .dw XT_EXIT
