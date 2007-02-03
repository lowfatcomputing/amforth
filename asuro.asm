; Settings for the arexx(DLR asuro mini robot

; cpu clock in hertz
.equ cpu_frequency = 8000000
; baud rate of terminal
.equ baud_rate = 2400

.include "devices/atmega8.asm"
  .set heap = ramstart
  .set VE_HEAD = $0000

device_init:
    ldi r16, (1<< WGM21)
    ori r16, (1<<COM20)
    ori r16, (1<<CS20)
    out TCCR2, r16

    ldi r16, $6e
    out OCR2, r16
    ldi r16, (1<<OCIE2)
    out TIMSK, r16
    
    ldi r16, (1<<PB3 | 1 << PB2)
    out DDRB, r16
    
    ret

.set pc_ = pc
.org OC2addr
    rjmp oc2_isr

.org pc_
.set count72 = heap
.set heap = heap + 1

oc2_isr:
    push xl
    in xl, SREG
    push xl
    lds xl, count72
    inc xl
    sts count72, xl
    pop xl
    out SREG, xl
    pop xl
    reti

.include "amforth.asm"
