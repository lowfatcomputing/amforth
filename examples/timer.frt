\ simple timing operations.
\ requires a ticker source (e.g. timer-interrupt.frt)

\ uses 
\  - ticks/sec 
\  - tick

\ ( d1 -- d2) d1 milliseconds later is in d2 ticks
: later ticks/sec 1000 m*/ tick @ s>d d+ ;

\ ( d -- f ) is the timer limit reached?
: expired? tick @ ud< ;

\ execute the word after d milliseconds
\ rounded to the next tick interval.
\ note the double cell for the time interval
\ ex: ' foo 10. after
: after ( xt d -- )
   later
   begin
      pause
      dup expired?
   until
   drop
   execute
;
