
\ testing multitasker
\ 2009-11-13  EW
\ Friday, the 13th  :-) 

marker --start--
include lib/multitask.frt

variable N
: init
  $ff PORTB c!
  $ff DDRB  c!
  0 N !
;

: job
  begin
    N @ invert PORTB c!
    1 N +!
    &500 0 ?do pause 1ms loop
  again
;

$20 $20 task  constant tid_demo \ save tid
: demo
  $0   over $10 + ! \ handler
  $16  over $12 + ! \ base
  >usart            \ use the default terminal for IO
  tid_demo activate
  job
;
: run-turnkey
  single
  +usart  >usart
  +int
  ver cr
  init
  onlytask
  tid_demo alsotask
  tid_demo task-awake
  demo
  multi
  tlist cr
;

\ ' run-turnkey is turnkey
-------------------------------------------------------------------


