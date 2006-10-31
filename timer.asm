;;; system tick
.set timerticks = heap
.set heap = heap + CELLSIZE

.set pc_ = pc
.org OC0ADDR
  rjmp timer0_compare
.org pc_

timer0_compare:
  push xl
  in xl,SREG
  push xl
  push xh

  lds xl,timerticks
  lds xh,timerticks+1
  adiw xl,1
  sts timerticks,xl
  sts timerticks+1,xh

  pop xh
  pop xl,
  out SREG,xl
  pop xl
  reti

; ( -- addr )
VE_TIMERTICKS:
    .db $0a, "timerticks",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TIMERTICKS
XT_TIMERTICKS:
    .dw PFA_DOVARIABLE
PFA_TIMERTICKS:
    .dw timerticks

; ( n1 -- n2 )
VE_TIMERINIT:
    .db $09, "timerinit"
    .dw VE_HEAD
    .set VE_HEAD = VE_TIMERINIT
XT_TIMERINIT:
    .dw DO_COLON
PFA_TIMERINIT:
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_TIMERTICKS
    .dw XT_STORE

    ; compare of 250 -> 1ms interrupt period
    .dw XT_DOLITERAL
    .dw 250
    .dw XT_OCR0
    .dw XT_CSTORE

    ; output compare interrupt
    .dw XT_DOLITERAL
    .dw 1<<OCIE0
    .dw XT_TIMSK
    .dw XT_CSTORE

    ; timer0 clear timer on compare, prescaler at /64
    .dw XT_DOLITERAL
    .dw (1<<WGM01)|(1<<CS01)|(1<<CS00)
    .dw XT_TCCR0
    .dw XT_CSTORE
    .dw XT_EXIT
