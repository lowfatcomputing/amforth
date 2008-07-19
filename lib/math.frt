\ from http://www.forth-ev.de/wiki/doku.php/examples:square_root
: sqrt ( n1 -- n2 ) dup 
    begin 
	swap dup rot swap / swap dup rot + 2 / dup rot 
    = until 
    swap drop ;

\ Paul E Bennet comp.arch.embedded 4 May 2008
\ : sqrt  -1 tuck do  2 +  dup +loop  2/ ;

\ was part of the core
: u*/mod
  >r um* r>
  um/mod
;
