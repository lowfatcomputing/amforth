\ some definitions that may be useful


: within? ( n lo hi -- f )
    >r 1- over < swap r> 1+ < and 
;

\ dump flash content
: idump ( addr len -- )
    0 do
	i 
	    over +  dup u.
	    i@ u.
	    cr
    loop
    drop
;
