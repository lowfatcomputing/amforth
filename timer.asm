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
