==============
Deferred Words
==============

Deferred words a technique that allows to change the behaviour of
a word at runtime. This is done by storing an execution token under
a certain name that is executed whenever that name is called. The stack
effect is entirely that of the stored execution token code. The basic
specification is at `www.forth200x.org/deferred.html 
<http://www.forth200x.org/deferred.html>`_ which is a must-read now.

AmForth has 3 different variants of ``defer`` which differ 
in the place, where the execution is stored: ``Edefer`` stores in 
EEPROM, ``Rdefer`` stores in RAM and ``Udefer`` stores 
in the USER area. The definition of a deferred word does not set a useful 
execution token. Using a deferred word without giving it a XT will crash 
the system. After the definition of the words, the further handling is 
always the same: ``IS`` stores the execution token into the 
deferred word. Further the standard words ``defer@`` and 
``defer!`` read and write the execution token regardless of 
the exact storage location.

AmForth uses the deferred words technique already internally:

* ``turnkey``, is an EEPROM based deferred word that is executed
    from ``QUIT`` usually during startup and reset.
* the words ``key``, ``key?``,
    ``emit``, and ``emit?`` are USER
    deferred words for low level terminal IO.
* ``refill`` and ``source`` are
    USER deferred words used by the forth interpreter
    to get the next command line.
* ``pause`` is a RAM based deferred word
    that is called whenever a task switch can be done.

Since there is no standard defer word, the programmer
has to take care where to store the execution tokens. An
EEPROM locations is available at startup without further
initialization. A USER based deferred word can be targeted
to different words in a multitasking environment and finally
a RAM based deferred word can be changed frequently. To
get a standard however, the following definition may be
helpful:

::

 > Edefer defer      \ keeps the assignment during resets
 ok
 > ' Rdefer is defer \ assignment not lost after reset
 ok
 >
