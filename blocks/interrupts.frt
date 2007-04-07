\ initialize interrupt vectors

: initIntVectors
    numint 0 do
	['] noop i intvector !
    loop
;
