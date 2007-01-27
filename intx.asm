
.equ INTVECTORS = 4 ; only a few interrupts for now

.set intcur   = heap ; current interrupt
.set heap     = heap + 1
.set intcount = heap ; interrupt counter, incremented for every int
.set heap     = heap + INTVECTORS * CELLSIZE
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

adc_isr:
    push yl
    ldi yl, 2
    rjmp intx_isr

oc2_isr:
    push yl
    ldi yl, 3
    rjmp intx_isr



intx_isr:
    push zh
    in zh,SREG
    push zh
    push zl
    push yh
    ldi zl, LOW(intcur)
    ldi zh, HIGH(intcur)
    std Z+0, yl
    ldi zl, LOW(intcount)
    ldi zh, HIGH(intcount)
    lsl yl
    add zl, yl
    adc zh, zeroh
    ldd yl, Z+0
    ldd yh, Z+1
    adiw yl, 1
    std Z+0, yl
    std Z+1, yh
    pop yh
    pop zl
    pop zh
    out SREG,zh
    pop zh
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
    .dw XT_2STAR
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
