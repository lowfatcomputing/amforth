\ initialize interrupt vectors

: initIntVectors
    #int 0 do
	['] noop i int!
    loop
;
