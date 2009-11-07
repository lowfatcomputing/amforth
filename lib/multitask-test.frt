
\ testing multitasker

hex
onlytask ( -- ) 
20 20 task ( -- tid )
dup task-sleep ( -- tid )
dup alsotask   ( -- tid )

variable counter 0 counter !
: taskdemo ( tid -- )
    0   over 10 + ! \ handler
    16  over 12 + ! \ base
    >usart          \ use the default terminal for IO
    activate
    begin
	1 counter +!
	pause
    again
;

taskdemo
multi
tlist

counter @ u.
1ms 1ms
counter @ u.
