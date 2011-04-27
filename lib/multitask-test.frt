\ testing multitasker
\ 2009-11-13  EW
\ 2011-04-27  added better comments

\ This test of the amforth multitasker creates two tasks:
\ 1.  a loop which toggles the pins of PORTB. More precisely
\     variable N is incremented and written to PORTB. This
\     is "viewed" most easily with LED connected to +5V and the
\     pins of PORTB.
\ 2.  the amforth command-loop continues to run so the
\     the controller can still be accessed via the serial
\     terminal and used. Try for example
\     0 N !
\     interactively while the multitasker is running.
\ 
\ These tasks can be started at power up when registering
\ function "run-turnkey" as turnkey.
\
\ Please note: if more than the task running the command loop
\ is producing output to the serial terminal, then the output
\ may be garbled. There is no concurrency locking implemented.




\ demo_job needs this entry in dict_appl.inc
\     .include "words/1ms.asm"


\ load the multitasker
#include lib/multitask.frt

\ N is used to count up, its value is written to PORTB
variable N

\ switch PORTB to output, all pins high (LEDs off)
\ clear N
: init
  $ff PORTB c!
  $ff DDRB  c!
  0 N !
;

\ This job is the loop of task 1, as described above.
\ The counter N is incremented after half a second.
\ The call to "pause" in this loop is essential --- it
\ defines the point where the next task is allowed to run!
: demo_job
  begin
    N @ invert PORTB c!
    1 N +!
    &500 0 ?do pause 1ms loop
  again
;

\ create a task, i.e. stack space, user area space to establish
\ the neccessary book keeping.
\ "task" returns a number, which is needed later, so it is saved
\ into the constant "tid_demo".
$20 $20 task  constant tid_demo \ save tid
: demo
  tid_demo
    0  over $10 + ! \ store handler
  &16  over $12 + ! \ store base

  +usart            \ use the default terminal for IO
  activate          \ add this task to the list of active tasks
  demo_job          \ call this tasks job
;
: run-turnkey
  single
  \ the following 4 lines are stolen from words/applturnkey.asm
  init-user
  +usart
  +int
  ver cr
  \ initialize pins
  init
  \ turn this programm into task 1, create task 2 (demo)
  onlytask
  tid_demo alsotask
  tid_demo task-awake
  demo
  \ activate multitasking
  multi
  \ list the running tasks
  tlist cr
;

\ use the next line once to start the above tasks after power up
\ ' run-turnkey is turnkey



