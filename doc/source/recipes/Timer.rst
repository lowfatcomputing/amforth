=====
Timer
=====

The timer library in the :file:`lib/hardware` directory
consists basically of two parts: an access module and a
generic module that depends on one of the access modules.

The access module (in :file:`timer0.frt` and :file:`timer1.frt`)
encapsulate the access to the selected timer. It uses interrupts to
create a millisecond counter for common usage. This millsecond counter
is a single cell variable that gets continuesly incremented and
wraps around every 65,5 seconds.

The generic routines rely on this counter. A timer is simply a single
cell number that is either the starting value of the millisecond counter 
(e.g. for :file:`elapsed`) or the stop value (:file:`after`).

To get a timer get the current value of the tick. With that number you 
can call :file:`elapsed` to get the number of milliseconds since start. 
To check whether a timer is expired you need to calculate the end time by 
adding the time span to the current tick value. The word :file:`expired?` 
compares the current tick value with that calculated time and leaves a flag.


The words are multitasker friendly (by calling :file:`pause` whenever 
useful.

The words provided so far are

* :file:`expired?` (t -- flag) checks whether a timers has expired. calls
  :file:`pause` internally.
* :file:`elapsed` (t -- n ) gets the number of millseconds since the timer
   has started.
* :file:`ms` ( u -- ) alternative implementation of standard word :file:`ms`
* :file:`after (XT u --)` waits u milliseconds and executes XT afterwards.
* :file:`every (XT n -- )` executes XT every n milliseconds. The XT has the stack
    effect ( -- f) for f beeing a flag indicating whether or not terminating the every
    loop.

An usage example is the Timeout-Loop. It is used as an replacement for begin, and 
takes an number as the amount  of milliseconds the loop has to finish, otherise an 
exception is thrown.

