============
Multitasking
============

amforth' multitasker is a loadable module. The core system provides the word ``pause`` which
does nothing per default. It is called by ``rx0?`` and ``tx0?`` internally however.

To change the action of ``pause`` you need to define a word and apply it with the command
``is``

::

 \ define a clever multitasker
 : mypause ( -- )
    \ do something useful, e.g. switch task
 ;

 \ turn it on
 ' mypause is pause

 \ and turn it off
 ' noop is pause

Amforth' multitasker makes use of the user area as the task control structure. The long term credit to
the multitasker's design seem to go back to Bill Muench, as stated at 
`hforth http://www.taygeta.com/hforth.html`_. The current code is based on a 
usenet article from Brad Eckert from Fri, 17 Aug 2007.

::

 \ initialize the task system
    onlytask   ( -- )     \ the system prompt is the only task
    20 20 task ( -- tid ) \ allocate stacks and a task control block
 dup task-sleep ( -- tid ) \ let it sleep
 dup alsotask   ( -- tid ) \ insert it into the task list chain

 tlist                     \ show the task list

 \ create a sample task, it only increments a counter and pauses
 variable counter 0 counter !
 : taskdemo ( tid -- )
    \ prepare task change, still within the current task context
    activate \ prepare the task control block to take over
    \ everything until ; is executed in the task context!
    begin
	1 counter +!
	pause
    again
 ;
 taskdemo 
 \ the counter loop does still not run!

 \ start the the multitasker, _now_ the counter loops starts
 multi

 \ show the task list, the multitasker is running
 tlist

 \ stop multitasking, only the forth interpreter is now active
 single

