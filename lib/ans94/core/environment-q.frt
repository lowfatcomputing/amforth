\ environment queries are placed in a
\ separate wordlist.

\ helper routine
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


\ the compiled (Flash) strings are transferred
\ to RAM and this copy processed afterwards.
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

\ some environment queries

\ save the definitions word list for this file
\ and switch to the environment queries wordlist
get-current environment set-current

: /counted-strings &32 ;
: floored 0 ;
: address-unit-bits $10 ;
: max-char $ff ;
: max-d $7fffffff. ;
: max-ud $ffffffff. ;
: max-n $7fff ;
: max-u $ffff ;

: return-stack-cells &10 ;
: stack-cells &10 ;

\ reset the definition word list
set-current
