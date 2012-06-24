\ dump cells from addr upward for len.
\ set x@ to dump memory:
\ '  @ is dump@  --> dump RAM.
\ ' e@ is dump@  --> dump EEPROM.
\ ' i@ is dump@  --> dump FLASH.

Rdefer dump@

: .c ( c -- )    
  $7F and dup $20 < if  drop $2E then emit ;

: lh-emit ( n -- )
  dup 8 rshift .c .c ;

: calc1   over + base @ 0 swap um/mod drop ;

: dump ( addr n -- )  
  $000f or 1+ swap $fff0 and swap
  over
  cr 3 cells 1+ spaces
  base @ 0  do  i calc1 5 .r  loop   space
  base @ 0  do  i calc1 2 .r  loop   drop
  0 ?do  cr dup  3 cells u.r space
         base @ 0 do  i over + dump@ 5 u.r loop
         space space
         base @ 0 do  i over + dump@
         lh-emit
         loop
         key?  if leave then
         base @ +
  base @ +loop
  cr drop ;


