\ TIMER_1 example
\
\ requires
\ in application master file
\  .set WANT_TIMER_COUNTER_1 = 1
\ from device.frt
\  TIMER1_OVFAddr
\ provides
\  timer1::tick      -- increasing ticker
\ 
\ older mcu's may need
\  TCCR1 constant TCCR1B
\  TIMSK constant TIMSK1

variable timer1::tick

\ preload for counter
variable timer1::preload

: timer1::isr
  \ uses a lot of internal knowlegde, may not work on devices
  \ where TCNT1H != TCNT1L+1 (e.g. Atmega128)
  \ writes the high byte first in one (forth) transaction
  timer1::preload @ TCNT1L ! 
  1 timer1::tick +!
;

: timer1::init
    0 timer1::preload !
    0 timer1::tick !
    ['] timer1::isr TIMER1_OVFAddr int!
;

\ some settings for 8bit timer to
\ get 1ms ticks
\ f_cpu  prescaler preload
\  16MHz   8       63536
\   8MHz   64      64536
: timer1::start
        0 timer1::tick !
    63536 timer1::preload !
    %00000010 TCCR1B c!
    %00000001 TIMSK1 c! \ enable overflow interrupt
;

: timer1::stop
   %00000000 TCCR1B c! \ stop timer
   %00000000 TIMSK1 c! \ stop interrupt
;
