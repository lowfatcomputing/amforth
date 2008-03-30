
\ dumper.frt
\  all words have the notation ( addr len -- ). 
\  addr and len are adjusted to meet the next
\  nice block boundaries. Every dump is specific
\  for it's memory type, please note the subtle
\  differences.

\ helper word
\ print a number in a field with 0 filled 
: u0.r ( u w -- )
      >r 0 \ see u.
      <# 
      r> 0 ?do # loop 
      #>  
      type
;

hex

\ dump len cells of RAM addressable memory starting at or below
\ addr upward. Align dump range to 8 cell blocks
: dump ( addr len -- )
    \ xxx0 cc cc cc cc cc cc cc cc 
    \ xxx8 cc cc cc cc cc cc cc cc
    \ ...
    \ clear lower 3 bits of addr
    swap fff8 and swap
    \ set lower 3 bits of len
    7 or 
    0 ?do
	( -- addr )
	dup 4 u0.r space
	8 0 do 
	    dup @ 4 u0.r space
	    cell+
	loop
	cr
	8 ( -- we always have this many bytes )
    +loop
    drop
;

\ dump len cells of EEPROM from addr upward
: edump ( addr len -- )
    \ xxx0 cccc cccc cccc cccc cccc cccc cccc cccc 
    \ xxx0 cccc cccc cccc cccc cccc cccc cccc cccc
    \ ...
    \ clear lower 3 bits of addr
    swap fff8 and swap
    \ set lower 3 bits of len
    7 or 
    0 ?do
	( -- addr )
	dup 4 u0.r space
	8 0 do 
	    dup e@ 4 u0.r space
	    cell+
	loop
	cr
	10 ( -- we always have this many bytes )
    +loop
    drop
;

\ dump len flash cells from addr upward
: idump ( addr len -- )    
    \ xxx0 cccc cccc cccc cccc cccc cccc cccc cccc 
    \ xxx8 cccc cccc cccc cccc cccc cccc cccc cccc
    \ ...
    \ clear lower 3 bits of addr
    swap fff8 and swap
    \ set lower 3 bits of len
    7 or 
    0 ?do
	( -- addr )
	dup 4 u0.r space
	8 0 do 
	    dup i@ 4 u0.r space
	    1+
	loop
	cr
	8 ( -- we always have this many cells )
    +loop
    drop
;

