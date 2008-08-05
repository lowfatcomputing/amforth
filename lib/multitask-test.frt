
\ testing multitasker

hex
onlytask ( -- ) 
20 20 task ( -- tid )
dup task-sleep ( -- tid )
dup alsotask   ( -- tid )

variable counter 0 counter !
: taskdemo ( tid -- )
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
