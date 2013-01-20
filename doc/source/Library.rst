

=======
Library
=======

Amforth does not have a formal library concept. Amforth has
a lot of forth code that can be seen as a library of words
and commands.

Hardware Access
###############

In the
:file:`device/`
subdirectory are the controller specific register
definitions. They are taken directly from the appnotes
from Atmel. The register names are all uppercase. It is
recommended to extract only the needed definitions since
the whole list occupy a lot of flash memory.

Some commonly used low level words can be included with
the
:file:`dict_mcu.inc`
include file at compile time.

Multitasking
############

The Library contains a cooperative multitasker in
the file
:file:`multitask.frt`
. It defines a command
:command:`multitaskpause`
which can assigned to
:command:`pause`
:
' multitaskpause is pause

The multitasker has the following commands

CMDSYN:  onlytask (--)
    Initialize the task system. The
    current task is placed as the only
    task in the task list.

CMDSYN:  alsotask (tid --)
    Append a newly created task to the
    task list. A running multitasker is
    temporarily stopped. Make sure that
    the status of the task is sleep.

CMDSYN:  task ( dstacksize rstacksize -- tid )
    Allocate RAM for the task control
    block (aka user area) and the two
    stacks. Initializes the whole user
    area to direct IO to the serial
    line. The task has still no code
    associated and is not inserted to
    the task list.

CMDSYN:  task-sleep ( tid --)
    Let the (other) task sleep. The task
    switcher skips the task on the next
    round. When a task executes this
    command for itself, the task
    continues until the next call of
    :command:`pause`
    .

CMDSYN:  task-awake ( tid --)
    The task is put into runnable mode.
    It is not activated immediately.

CMDSYN:  activate ( tid --)
    Skip all of the remaining code in
    the current colon word and continue
    the skipped code as task when the
    task list entry is reached by the
    multitasker.

It is possible to use a timer interrupt to call the
command
:command:`pause`
and turn the cooperative multitasker into a
preemptive one. The latency is in the worst case
that of the longest running uninterruptable forth
commands:
:command:`1ms`
,
:command:`!i`
and
:command:`!i`
. For a preemptive task switcher a lot more tools
like semaphores may be needed.

TWI / I2C
#########

The file
:file:`twi.frt`
contains the basic words to operate with the
hardware TWI module of the microcontroller. The file
:file:`twi-eeprom.frt`
uses these words to implement a native block buffer
access for I2C EEPROMs with 2byte addresses.

The word
:command:`+twi`
initializes the TWI hardware module with the
supplied parameters.
:command:`-twi`
turns the module off. The start-stop conditions are
sent with the
:command:`twi.start`
and
:command:`twi.stop`
words. Data is transferred with the three words
:command:`twi.tx`
for transmitting (sending) a byte,
:command:`twi.rx`
for reading a byte (and sending an ACK signal) and
:command:`twi.rxn`
for reading a byte and sending a NACK signal.

The command
:command:`twi.status`
fetches the TWI status register, the command
:command:`twi.status?`
compares the status with a predefined value and
throws the exception -14 if they do not match.

The command
:command:`twi.scan`
scans the whole (7 bit) address range and prints the
address of any device found.

Timer Module
############

The timer modules consist of a number of files in the :file:`lib/hardware` directory.
The bottom layer provides basic access to the timers as millisecond
tick sources. The next layer in the file :file:`lib/hardware/timer.frt`
uses one of the lower level files as the source for its own services.

The timer modules uses simple forth code. This is made possible due to
the highly sophisticated interrupt system of amforth. With it any assembler
word can be considered atomic and non-interruptable. The relevant points
for the timer module are the atomic increment 1+ used in the interrupt service
word and the atomic 16bit read operation @ when accessing the actual value.

Basic Timer Access
==================

The basic drivers have words to initialize and start/stop the timers.
As a convention, all words start with timerX, X beeing the number of
the timer. The timer counter gets incremented every millisecond.
The :file:`timer.frt` uses
the millisecond counter to provide easy-to-use generic timer related
tasks.

CMDSYN:  timerX.tick (-- addr)
    Address of the counter variable as unsigned number.
    It is expected to increase every millisecond. Warps
    around every 65 seconds.

CMDSYN:  timerX.preload ( -- addr)
    Address of the preload number that the counter
    gets initialized to every time it fires.

CMDSYN:  timerX.init ( preload -- )
    Sets the preload number to the given value and assigns the overflow interrupt
    service routine.

CMDSYN:  timerX.start ( -- )
    Sets the tick to 0, enables the interrupt and starts the timer.

CMDSYN:  timerX.stop ( -- )
    disables the overflow interrupt and stops the timer.

Timer Access
============

The :file:`timer.frt` modules provides a few general purpose words for
timed actions. They depend on the basic timer modules.

CMDSYN:  @tick ( -- u)
    Gets the current value of the ticker, the number can be used
    as input for any of the following words.
    :command:`pause` internally.

CMDSYN:  expired? ( u -- f)
    Checks whether a timer has expired. The timer is the initial
    tick value. The maximum time range is 65 seconds. It calls
    :command:`pause` internally.

CMDSYN:  elapsed ( u1 -- u2 )
    Time in milliseconds since the timer u1 has started.
    The maximum time range is 65 seconds.

CMDSYN:  after ( XT u -- )
    Execute the XT after waiting u milliseconds.
    The remaining stack effect is what the executed
    word does.

CMDSYN:  every ( XT u -- )
    Execute the XT every u milliseconds. The executed
    word should not have any stack effect.

To make use of the counters, just get the initial counter value and use as
the input to any of the timing words. An alternative implementation
of the standard word :command:`ms` illustrate it:
ms @tick + begin dup expired? until drop ;


