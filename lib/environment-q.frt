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

: (environment?) \ addr len -- 0|x*i -1
    environment search-wordlist dup
    if >r execute r> then
;
;

\ the compiled (Flash) strings are transferred
\ to RAM and processed there.
: [environment?]
   ( iaddr len -- )
    dup >r
    here copy-string
    here r> (environment?)
;

\ a state smart word to decide what to do.
: environment?
   state @ if
     postpone [environment?]
   else
     (environment?)
   then
; immediate

