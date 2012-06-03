\ TIMER_0 example
\
\ requires
\  in application master file
\    .set WANT_TIMER_COUNTER_0 = 1
\  from device.frt
\    TIMER0_OVFAddr
\ provides
\  timer0.tick      -- increasing ticker
\ 
\ older mcu's may need
\  TCCR0 constant TCCR0B
\  TIMSK constant TIMSK0

variable timer0.tick

\ preload for counter
variable timer0.preload

: timer0.isr
  timer0.preload @ TCNT0 c!
  1 timer0.tick +!
;

: timer0.init
    0 timer0.tick !
    0 timer0.preload !
    ['] timer0.isr TIMER0_OVFAddr int!
;

\ some settings for 8bit timer to
\ get 1ms ticks
\ f_cpu  prescaler preload
\  16MHz   64       6
\   8MHz   64     131

: timer0.start
    0 timer0.tick !
    \ prescaler 64, preload 6 Overflows only
    6 timer0.preload !
    %00000011 TCCR0B c! 
    %00000001 TIMSK0 c! \ enable overflow interrupt
;

: timer0.stop
   %00000000 TCCR0B c! \ stop timer
   %00000000 TIMSK0 c! \ stop interrupt
;
