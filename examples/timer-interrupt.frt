
\ simple interrupt demonstration
\ runs a ticker with timer 0, implemented in pure forth
\ tested on an Atmega16, others use different addresses
\ 
\ some constant definitions 
\ take the real values by setting
\ .set WANT_TIMER_COUNTER_0 = 1
\ when generating the initial hex files

\ Timer 0 overflow, interrupt number for Atmega16
$12 constant TIMER0_OVFAddr

\ initialize the frequency: muc frequency / 1024, ovrflow interrupt
\ every 256 timer ticks.
\  16MHz F_CPU -> 64 ticks/sec
\   8MHz F_CPU -> 32 ticks/sec
\
: timer-init
  5 TCCR0 c! \ prescaler 1024, check data sheet
;


variable tick

\ just increment the tick variable, can be extended to
\ generate real seconds/minutes/hours...
: timer-int-isr
   1 tick +!
;

\ turn on the timer, needs timer-init already in place
: +timer
  0 tick !
  ['] timer-int-isr TIMER0_OVFAddr int!
  1 TIMSK c!
;

\ stops the timer
: -timer
  0 TIMSK c!
;

