;;; system tick
.set timer2ticks = heap
.set heap = heap + CELLSIZE
.set timer2init  = heap
.set heap = heap + CELLSIZE

.set pc_ = pc
.org OC2ADDR
  rjmp timer2_compare
.org pc_

timer2_compare:
  push xl
  in xl,SREG
  push xl
  push xh

  lds xl,timer2ticks
  lds xh,timer2ticks+1
  adiw xl,1
  sts timer2ticks,xl
  sts timer2ticks+1,xh
  
  lds xl, timer2init
  in xh, TCNT0
  add xh, xl
  out TCNT0, xh
  pop xh
  pop xl,
  out SREG,xl
  pop xl
  reti

; ( -- addr )
VE_TIMER2TICKS:
    .db $0b, "timer2ticks"
    .dw VE_HEAD
    .set VE_HEAD = VE_TIMER2TICKS
XT_TIMER2TICKS:
    .dw PFA_DOVARIABLE
PFA_TIMER2TICKS:
    .dw timer2ticks

; ( -- addr )
VE_TIMER2INIT:
    .db $0a, "timer2init",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TIMER2INIT
XT_TIMER2INIT:
    .dw PFA_DOVARIABLE
PFA_TIMER2INT:
    .dw timer2init

