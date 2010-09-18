
\ requires help
\ 

get-current
help-wl set-current

: emit 
  ." ( c -- ) "
  ." R:( -- ) "
  ." emits a single character on the terminal, calls pause" ;
  
: key 
  ." ( -- c ) "
  ." R: ( -- ) "
  ." waits for a key stroke, calls pause "
;


set-current
