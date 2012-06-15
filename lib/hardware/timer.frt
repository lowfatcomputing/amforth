\ generic timer routines, based
\ upon hardware modules.

\ requires
\   timer0.frt OR timer1.frt
\ provides
\   expired?  -- checks whether a counter has expired
\   elapsed   -- shows the elapsed time in ms
\   after     -- execute a word after n ms after now
\   ms        -- alternative implementation for ANS94 ms
\   every     -- runs a word every cycle. the word provides an exit flag
\   every-second -- runs a word every second
\
: @tick 
   \ timer0.tick @ 
   timer1.tick @ 
;

: expired? ( n -- flag )
   pause @tick - 0<
;

\ alternative implementation for ms
: ms @tick + begin dup expired? until drop ;

: elapsed ( n -- )
    @tick swap - u.
;

\ execute the word after u milliseconds
\ ex: ' foo 10 after
: after ( xt u -- )
   ms execute
;

\ execute a word every u ms. The word
\ has the stack effect ( -- f). If f is
\ false, the loop ends
: every ( xt u -- )
   begin over over after until drop drop
;

\ 
: every-second ( xt -- )
   1000 every
;

