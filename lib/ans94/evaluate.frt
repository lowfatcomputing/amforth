\ evaluate
\ temporarily redirect the input source
\ to string buffer. Return the the previous
\ input source afterwards and continue

variable strlen
variable str
variable old-source

: source-string str @ strlen @ ;

: evaluate \ i*x addr len -- j*y 
    ['] source defer@ old-source !
    >in @ >r
    0 >in !
    strlen !
    str !
    ['] source-string is source
    interpret
    old-source @ is source
    r> >in !
;
