\ evaluate
\ temporarily redirect the input source
\ to string buffer. Return the the previous
\ input source afterwards and continue

variable strlen
variable str

: source-string str @ strlen @ ;

: evaluate \ i*x addr len -- j*y 
    ['] source defer@ >r 
    >in @ >r
    0 >in !
    strlen !
    str !
    ['] source-string is source
    ['] interpret catch
    r> >in !
    r> is source
    throw
;

\ todo: make it immediate: if compiled, copy the string 
\ to ram first and interpret the copy
