\ from http://www.forth-ev.de/wiki/doku.php/examples:square_root
: sqrt ( n1 -- n2 ) dup 
    begin 
	swap dup rot swap / swap dup rot + 2 / dup rot 
    = until 
    swap drop ;
