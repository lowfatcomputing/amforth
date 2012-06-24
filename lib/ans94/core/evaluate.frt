\ evaluate
\ temporarily redirect the input source
\ to string buffer. Return the the previous
\ input source afterwards and continue

\ some helper words
variable strlen
variable str
: source-string str @ strlen @ ;
: copy-string ( i-addr len ram -- )
  rot rot     ( -- ram i-addr len )
  2/ 1+       ( -- ram i-addr f-cells )
  over + swap
  ?do
    i @i over ! cell+
  loop
  drop
;

\ we have to distinguish between interpreted (RAM)
\ and compiled (Flash) strings. First the RAM
\ strings

: (evaluate) \ i*x addr len -- j*y 
    ['] source defer@ >r 
    >in @ >r
    0 >in !
    strlen !
    str !
    ['] source-string is source
    ['] interpret catch
    r> >in !
    r> is source
    throw
;

\ the compiled (Flash) strings are transferred
\ to RAM and processed there.
: [evaluate]
   ( iaddr len -- )
    dup >r
    here copy-string
    here r> (evaluate)
;

\ a state smart word to decide what to do.
: evaluate
   state @ if
     postpone [evaluate]
   else
     (evaluate)
   then
; immediate
