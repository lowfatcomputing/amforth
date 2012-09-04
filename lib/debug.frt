\ Gerry dlf 31.8.2012 "Single Step Debugging.."
\ modified: prints a debug prompt. Exits the
\ debug mode when entering an empty line
82 buffer: debugbuf
: (?) cr ." debug> " debugbuf dup 80 accept ; 
: ?? begin (?) dup while (evaluate) repeat 2drop ; 
\ maybe add a special debug wordlist
\ maybe add a global debug-active flag