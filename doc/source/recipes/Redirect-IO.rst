===========
Redirect IO
===========

Output
------

Amforth uses many words like ``."`` and ``type`` to write information 
for the user. All these words do not do the output work actually, they call 
``emit`` for each and every single character. And ``emit`` 
can be redefined.

::

  : morse-emit ( c -- )
    ... \ some code to let a buzzer beep for the character c
  ;
  ' morse-emit is emit
  \ now everything gets morsed out. even the prompt
  \ unless your morse-emit does not call the previous
  \ emit nothing will be displeyd
  s" let it beep" type

The same technique may be used for e.g. a 44780 LCD. The new
code has to take care of everything like scrolling etc as well.

To complete the picture, another word ``emit?``
should be redefined. It is called in front of <emit> to
check whether the output is possible. If no such check
is nessecairy or possible, just do an 
``' true is emit?``

Unless you do not change the turnkey action as well, everything
gets reset to serial IO whenever you call ``WARM``.

Input
-----

similar to the output, the usual line based input word
such as ``accept`` use the word pair ``key``
and ``key?`` get actually get a character or check
for whether a new character is available respectivly. And like
the ``emit`` words, they can be redefined as well.

Entering characters is usually a bit more complicated since
the code usually knows, how to deal with them but does not know
when they arrive. This leads to an layered design with a small
interrupt service routine that reads the character and places
it in an input queue. Whenever the program is ready to process
a character it checks the queue and reads the most un-read
from it.

::

 : ps2-key-isr ( -- )
  \ get the most recent key stroke 
  \ place the key-event in a queue
 ;
 : ps2-key? ( -- f )
  \ check the input queue, return true if
  \ a key-event is unread
 ;
 : ps2-key ( -- c )
  \ read and unqueue the oldest key-event from the
  \ queue.
 ;
 \ the next word changes the terminal input to
 \ the PS2 based system. This cannot be done interactivly!
 : ps2-init ( -- )
  \ initialize ps2-key-isr
  ['] ps2-key? is key?
  ['] ps2-key  is key
 ;

There are some notes that may affect your program

* If a multitasker is used take care to include calls
  to ``pause`` in your ``key?`` and
  ``emit?`` definitions.</li>
* It is not uncommon that ``key``
  calls ``key?`` in a loop until a character is
  available.</li>
* AmForth uses one of the following words depending on
  two WANT settings. They default in :file:`macros.asm`
  to WANT_RX_ISR=1 and WANT_TX_ISR=0.

    +--------------------+--------------------+
    |   WANT\_RX\_ISR      |      WANT\_TX\_ISR   |
    +----------+---------+----------+---------+
    +   0      |    1    |    0     |    1    |
    +----------+---------+----------+---------+
    | rx-poll  | rx-isr  | tx-poll  | tx-isr  |
    +----------+---------+----------+---------+
    | rx?-poll | rx?-isr | tx?-poll | tx?-isr |
    +----------+---------+----------+---------+

* All IO words with more complexity (e.g. ``type``
  or ``accept`` call any of the 4 deferred words. There
  is no need to change them.
* Amforth uses the control characters for the line editing
  (e.g. backspace, TAB, CR/LF). Characters are 8bit numbers 
  (ASCII). Multibyte-Characters are not currently supported.
* Another IO related recipe is the  Disable Command Prompt Echo
