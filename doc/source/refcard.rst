.. _RefCard:

Reference Card
==============

General
-------

AmForth is a 16bit ITC forth. It is almost compatible with
the forth standards from 1994 and 200x. It runs on the
bare metal controller with no further dependencies. 
The interpreter operates on whitespace delimited words.
The compiler is a single pass compiler that writes
directly to the flash based dictionary.

There are three distinct address spaces for flash, 
eeprom and RAM. Flash is addressed word wise (16 bits 
per address unit), RAM  and EEPROM is accessed byte 
wise (8bits per address unit). The standard return stack
has 40 cells, the data stack is limited by the available
RAM size.

Numbers can be prefixed by $ to indicate hexadecimal,
% for binary and \# for decimal numbers. A trailing
dot is used for double cell numbers.

Arithmetics
-----------

* :command:`1\-`
  ( n1 -- n2 )
  optimized decrement

* :command:`1\+`
  ( n1|u1 -- n2|u2 )
  optimized increment

* :command:`2/`
  ( n1 -- n2 )
  arithmetic shift right

* :command:`2\*`
  ( n1 -- n2 )
  arithmetic shift left, filling with zero

* :command:`abs`
  ( n1 -- u1 )
  get the absolute value

* :command:`><`
  ( n1 -- n2 )
  exchange the bytes of the TOS

* :command:`cell\+`
  ( a-addr1 -- a-addr2 )
  add the size of an address-unit to a-addr1

* :command:`cells`
  ( n1 -- n2 )
  n2 is the size in address units of n1 cells

* :command:`d2/`
  ( d1 -- d2 )
  shift a double cell value right

* :command:`d2\*`
  ( d1 -- d2 )
  shift a double cell left

* :command:`dabs`
  ( d -- ud )
  double cell absolute value

* :command:`dinvert`
  ( d1 -- d2)
  invert all bits in the double cell value

* :command:`d\-`
  ( d1 d2 -- d3 )
  subtract d2 from d1 

* :command:`dnegate`
  ( d1 -- d2 )
  double cell negation

* :command:`d\+`
  ( d1 d2 -- d3)
  add 2 double cell values

* :command:`invert`
  ( n1 -- n2)
  1-complement of TOS

* :command:`log2`
  ( n1 -- n2 )
  logarithm to base 2 or highest set bitnumber

* :command:`lshift`
  ( n1 n2 -- n3)
  logically shift n1 left n2 times

* :command:`\-`
  ( n1|u1 n2|u2 -- n3|u3 )
  subtract n2 from n1

* :command:`mod`
  ( n1 n2 -- n3)
  divide n1 by n2 giving the remainder n3

* :command:`m\*`
  ( n1 n2 -- d)
  multiply 2 cells to a double cell

* :command:`\+`
  ( n1 n2 -- n3)
  add n1 and n2

* :command:`\+!`
  ( n a-addr -- )
  add n to content of RAM address a-addr

* :command:`rshift`
  ( n1 n2 -- n3 )
  shift n1 n2-times logically right

* :command:`/`
  ( n1 n2 -- n3)
  divide n1 by n2. giving the quotient

* :command:`/mod`
  ( n1 n2 -- rem quot)
  signed division n1/n2 with remainder and quotient

* :command:`\*`
  ( n1 n2 -- n3 )
  multiply routine

* :command:`\*/`
  (n1 n2 n3 -- n4)
  signed multiply and division with double precision intermediate

* :command:`\*/mod`
  ( n1 n2 n3 -- rem quot)
  signed multiply n1 * n2 and division  with n3 with double precision intermediate and remainder

* :command:`true`
  ( -- -1 )
  leaves the value -1 (true) on TOS

* :command:`ud/mod`
  ( d1 n -- rem ud2 )
  unsigned double cell division with remainder

* :command:`um/mod`
  ( ud u2 -- rem quot)
  unsigned division ud / u2 with remainder

* :command:`um\*`
  ( u1 u2 -- d)
  multiply 2 unsigned cells to a double cell

* :command:`u/mod`
  (u1 u2 -- rem quot)
  unsigned division with remainder

* :command:`0`
  ( -- 0 )
  place a value 0 on TOS




Character IO
------------

* :command:`bl`
  ( -- 32 )
  put ascii code of the blank to the stack

* :command:`cr`
  ( -- )
  cause subsequent output appear at the beginning of the next line

* :command:`emit`
  ( c -- )
  fetch the emit vector and execute it. should emit a character from TOS

* :command:`emit?`
  ( -- f )
  fetch emit? vector and execute it. should return the ready-to-send condition

* :command:`key`
  ( -- c )
  fetch key vector and execute it, should leave a single character on TOS

* :command:`key?`
  ( -- f)
  fetch key? vector and execute it. should turn on key sender, if it is disabled/stopped

* :command:`space`
  ( -- )
  emits a space (bl)

* :command:`spaces`
  ( n -- )
  emits n space(s) (bl)

* :command:`type`
  ( addr n -- )
  print a RAM based string




Compare
-------

* :command:`d=`
  ( n1 n2 -- flag )
  compares two double cell values

* :command:`d>`
  ( d1 d2 -- flag )
  compares two double cell values (signed)

* :command:`d<`
  ( d1 d2 -- flag)
  checks whether d1 is less than d2

* :command:`=`
  ( n1 n2 -- flag )
  compares two values for equality

* :command:`0=`
  ( n -- flag )
  compare with 0 (zero)

* :command:`>`
  ( n1 n2 -- flag )
  flag is true if n1 is greater than n2

* :command:`0>`
  ( n1 -- flag )
  true if n1 is greater than 0

* :command:`0<`
  ( n1 -- flag)
  compare with zero

* :command:`max`
  ( n1 n2 -- n1|n2 )
  compare two values, leave the bigger one

* :command:`min`
  ( n1 n2 -- n1|n2 )
  compare two values leave the smaller one

* :command:`<>`
  ( n1 n2 -- flag)
  true if n1 is not equal to n2

* :command:`0<>`
  ( n -- flag )
  true if n is not zero

* :command:`u>`
  ( u1 u2 -- flag )
  true if u1 > u2 (unsigned)

* :command:`u>=`
  ( u1 u2 -- flag )
  compare two unsigned numbers, returns true flag if u1 is greater then or equal to u2

* :command:`u<`
  ( u1 u2 -- flasg)
  true if u1 < u2 (unsigned)

* :command:`u<=`
  ( u1 u2 -- flag )
  compare two unsigned numbers, returns true flag if u1 is less then or equal to u2

* :command:`within`
  ( n min max -- f)
  check if n is within min..max




Compiler
--------

* :command:`2literal`
  ( -- x1 x2 )
  (C: x1 x2 -- )
  compile a cell pair literal in colon definitions

* :command:`again`
  ( -- )
  (C: dest -- )
  compile a jump back to dest

* :command:`ahead`
  ( f -- )
  (C: -- orig )
  do a unconditional branch

* :command:`\`
  ( "ccc<eol>" -- )
  everything up to the end of the current line is a comment

* :command:`begin`
  ( -- )
  (C: -- dest )
  put the next location for a transfer of control onto the control flow stack

* :command:`[']`
  ( -- xt )
  (C: "<space>name" -- )
  what ' does in the interpreter mode, do in colon definitions

* :command:`code`
  ( -- )
  (C: cchar -- )
  create named entry in the dictionary, XT is the data field

* :command:`:`
  ( -- )
  (C: "<spaces>name" -- )
  create a named entry in the dictionary, XT is DO\_COLON

* :command:`:noname`
  ( -- xt )
  create an unnamed entry in the dictionary, XT is DO\_COLON

* :command:`constant`
  ( -- x )
  (C: x "<spaces>name" -- )
  create a constant in the dictionary

* :command:`do`
  ( n1 n2 -- )
  (R: -- loop-sys )
  (C: -- do-sys )
  start do .. [+]loop

* :command:`(create)`
  ( --  )
  (C: "<spaces>name" -- voc-link )
  parse the input and create an vocabulary entry without XT and data field (PF)

* :command:`does>`
  ( i*x -- j*y )
  (R: nest-sys1 -- )
  (C: colon-sys1 -- colon-sys2 )
  replace the runtime semantics

* :command:`.''`
  ( -- )
  (C: "ccc<quote>" -- )
  compiles string into dictionary to be printed at runtime

* :command:`Edefer`
  ( c<name> -- )
  creates a defer vector which is kept in eeprom.

* :command:`else`
  (C: orig1 -- orig2 )
  (C: orig1 -- orig2 )
  resolve the forward reference and place a new unresolved forward reference

* :command:`end\-code`
  ( -- )
  finish a code definition

* :command:`exit`
  ( -- )
  (R: nest-sys -- )
  end of current colon word

* :command:`header`
  ( addr len wid -- voc-link )
  creates the vocabulary header without XT and data field (PF) in the wordlist wid

* :command:`i`
  ( -- n )
  (R: loop-sys -- loop-sys)
  current loop counter

* :command:`if`
  ( f -- )
  (C: -- orig )
  start conditional branch

* :command:`immediate`
  ( -- )
  set immediate flag for the most recent word definition

* :command:`j`
  ( -- n )
  (R: loop-sys1 loop-sys2 -- loop-sys1 loop-sys2)
  loop counter of outer loop

* :command:`[`
  ( --  )
  enter interpreter mode

* :command:`leave`
  ( -- )
  (R: loop-sys -- )
  immediatly leave the current DO..LOOP

* :command:`literal`
  ( -- n )
  (C: n -- )
  compile a literal in colon defintions

* :command:`loop`
  (R: loop-sys -- )
  (R: loop-sys -- )
  (C: do-sys -- )
  compile (loop) and resolve the backward branch

* :command:`(`
  ( "ccc<paren>" -- )
  skip everything up to the closing bracket on the same line

* :command:`\+loop`
  ( n -- )
  (R: loop-sys -- loop-sys| )
  (C: do-sys -- )
  compile (+loop) and resolve branches

* :command:`?do`
  ( n1|u1 n2|u2 -- )
  (C: -- do-sys)
  start a ?do .. [+]loop control structure

* :command:`]`
  ( --  )
  enter compiler mode

* :command:`Rdefer`
  ( c<name> -- )
  creates a RAM based defer vector

* :command:`recurse`
  ( -- )
  compile the XT of the word currently being defined into the dictionary

* :command:`repeat`
  ( --  )
  (C: orig dest -- )
  continue execution at dest, resolve orig

* :command:`s,`
  ( addr len -- )
  compiles a string from RAM to Flash

* :command:`;`
  ( -- )
  finish colon defintion, compiles (exit) and returns to interpret state 

* :command:`s''`
  ( -- addr len)
  (C: <cchar> -- )
  compiles a string to flash, at runtime leaves ( -- flash-addr count) on stack

* :command:`then`
  ( -- )
  (C: orig -- )
  finish if

* :command:`unloop`
  ( -- )
  (R: loop-sys -- )
  remove loop-sys, exit the loop and continue execution after it

* :command:`until`
  ( f -- )
  (C: dest -- )
  finish begin with conditional branch, leaves the loop if true flag at runtime

* :command:`user`
  ( n cchar -- )
  create a dictionary entry for a user variable at offset n

* :command:`value`
  ( n <name> -- )
  create a dictionary entry for a value and allocate 1 cell in EEPROM.

* :command:`variable`
  ( cchar -- )
  create a dictionary entry for a variable and allocate 1 cell RAM

* :command:`while`
  ( f -- )
  (C: dest -- orig dest )
  at runtime skip until repeat if non-true




Conversion
----------

* :command:`d>s`
  ( d1 -- n1 )
  shrink double cell value to single cell. 

* :command:`s>d`
  ( n1 -- d1 )
  extend (signed) single cell value to double cell




Dictionary
----------

* :command:``
  ( n -- )
  compile 16 bit into flash at DP

* :command:`compile`
  ( -- )
  read the following cell from the dictionary and append it to the current dictionary position.

* :command:`create`
  ( -- a-addr )
  (C: "<spaces>name" -- )
  create a dictionary header. XT is (constant), with the address of the data field of name

* :command:`'`
  ( "<spaces>name" -- XT )
  search dictionary for name, returns XT or throw an exception -13




Environment
-----------

* :command:`/hold`
  ( -- hldsize )
  size of the pictured numeric output buffer in bytes

* :command:`/pad`
  ( -- padsize )
  Size of the PAD buffer in bytes

* :command:`/user`
  ( -- usersize )
  size of the USER area in bytes

* :command:`wordlists`
  ( -- n )
  maximum number of wordlists in the dictionary search order

* :command:`cpu`
  ( -- faddr len )
  flash address of the CPU identification string

* :command:`forth\-name`
  ( -- faddr len )
  flash address of the amforth name string

* :command:`version`
  ( -- n )
  version number of amforth

* :command:`mcu\-info`
  ( -- faddr len )
  flash address of some CPU specific parameters




Exceptions
----------

* :command:`abort`
  ( i*x -- )
  (R: j*y -- )
  send an exception -1

* :command:`abort''`
  ( i*x x1 -- | i*x )
  (R: j*y -- | j*y )
  (C: "ccc<quote>" -- )
  check flag. If true display the parsed text and throw exception -2 

* :command:`catch`
  ( i*x xt -- j*x 0 | i*x n )
  execute XT and check for exceptions.

* :command:`handler`
  ( -- a-addr )
  USER variable used by catch/throw

* :command:`throw`
  ( n -- )
  throw an exception




Extended VM
-----------

* :command:`a@`
  ( -- n2 )
  Read memory pointed to by register A (Extended VM)

* :command:`a@\-`
  ( -- n )
  Read memory pointed to by register A, decrement A by 1 cell (Extended VM)

* :command:`a@\+`
  ( -- n )
  Read memory pointed to by register A, increment A by 1 cell (Extended VM)

* :command:`a!`
  ( n -- )
  Write memory pointed to by register A (Extended VM)

* :command:`a!\-`
  ( -- n2 )
  Write memory pointed to by register A, decrement A by 1 cell (Extended VM)

* :command:`a!\+`
  ( -- n2 )
  Write memory pointed to by register A, increment A by 1 cell (Extended VM)

* :command:`a>`
  ( n1 -- n2 )
  read the A register (Extended VM)

* :command:`b@`
  ( -- n2 )
  Read memory pointed to by register B (Extended VM)

* :command:`b@\-`
  ( -- n )
  Read memory pointed to by register B, decrement B by 1 cell (Extended VM)

* :command:`b@\+`
  ( -- n )
  Read memory pointed to by register B, increment B by 1 cell (Extended VM)

* :command:`b!`
  ( n -- )
  Write memory pointed to by register B (Extended VM)

* :command:`b!\-`
  ( -- n2 )
  Write memory pointed to by register B, decrement B by 1 cell (Extended VM)

* :command:`b!\+`
  ( -- n2 )
  Write memory pointed to by register B, increment B by 1 cell (Extended VM)

* :command:`b>`
  ( n1 -- n2 )
  read the B register (Extended VM)

* :command:`na@`
  ( n1 -- n2 )
  Read memory pointed to by register A plus offset (Extended VM)

* :command:`na!`
  ( n offs -- )
  Write memory pointed to by register A plus offset (Extended VM)

* :command:`nb@`
  ( n1 -- n2 )
  Read memory pointed to by register B plus offset (Extended VM)

* :command:`nb!`
  ( n offs -- )
  Write memory pointed to by register B plus offset (Extended VM)

* :command:`>a`
  ( n -- )
  Write to A register (Extended VM)

* :command:`>b`
  ( n -- )
  Write to B register (Extended VM)




Interpreter
-----------

* :command:`get\-recognizer`
  ( -- recn .. rec0 n)
  Get the current recognizer list

* :command:`rec\-find`
  ( addr len -- f )
  recognizer searching the dictionary

* :command:`rec\-intnum`
  ( addr len -- f )
  recognizer for integer numbers

* :command:`rec\-notfound`
  ( addr len --  )
  recognizer for NOT FOUND

* :command:`set\-recognizer`
  ( recn .. rec0 n -- )
  replace the recognizer list




Interrupt
---------

* :command:`int@`
  ( i -- xt )
  fetches XT from interrupt vector i

* :command:`\-int`
  ( -- sreg )
  turns off all interrupts and leaves SREG in TOS

* :command:`\+int`
  ( --  )
  turns on all interrupts

* :command:`int!`
  ( xt i -- )
  stores XT as interrupt vector i

* :command:`int\-trap`
  ( i --  )
  trigger an interrupt

* :command:`\#int`
  ( -- n )
  number of interrupt vectors (0 based)




Logic
-----

* :command:`and`
  ( n1 n2 -- n3 )
  bitwise and

* :command:`negate`
  ( n1 -- n2 )
  2-complement

* :command:`not`
  ( flag -- flag' )
  identical to 0=

* :command:`or`
  ( n1 n2 -- n3 )
  logical or

* :command:`xor`
  ( n1 n2 -- n3)
  exclusive or




MCU
---

* :command:`!@spi`
  ( n1 -- n2 )
  SPI exchange of 2 bytes, high byte first

* :command:`baud`
  ( -- v)
  returns usart baudrate settings

* :command:`bm\-clear`
  ( bitmask byte-addr --  )
  clear bits set in bitmask on byte at addr

* :command:`bm\-set`
  ( bitmask byte-addr --  )
  set bits from bitmask on byte at addr

* :command:`bm\-toggle`
  ( bitmask byte-addr --  )
  toggle bits set in bitmask on byte at addr

* :command:`rx?\-isr`
  ( -- f)
  check if unread characters are in the input queue using interrupt driver

* :command:`rx?\-poll`
  ( -- f)
  check if a character can be appended to output queue using register poll

* :command:`rx\-isr`
  ( -- c)
  get 1 character from input queue, wait if needed using interrupt driver

* :command:`rx\-poll`
  (c -- )
  wait for one character and read it from the terminal connection using register poll

* :command:`c!@spi`
  ( txbyte -- rxbyte)
  SPI exchange of 1 byte

* :command:`>usart`
  ( -- )
  initialize the user area to use the system terminal for IO

* :command:`tx?\-isr`
  ( -- f)
  check if a character can be appended to output queue.

* :command:`tx?\-poll`
  ( -- f)
  check if a character can be send using register poll

* :command:`tx\-isr`
  (c -- )
  put 1 character into output queue, wait if needed, enable UDRIE interrupt

* :command:`tx\-poll`
  (c -- )
  check availability and send one character to the terminal using register poll

* :command:`\+usart`
  ( -- )
  initialize usart

* :command:`\+usartx`
  ( -- )
  initialize the atxmega usart (ATXmega)

* :command:`wdr`
  ( -- )
  calls the MCU watch dog reset instruction

* :command:`x\-rx?\-poll`
  ( -- f)
  check if a character can read from the terminal (Poll, ATXmega)

* :command:`x\-rx\-poll`
  ( -- c)
  wait for and get one character from the terminal (Poll, ATXmega)

* :command:`x\-tx?\-poll`
  ( -- f)
  check if a character can be sent (Poll, ATXmega)

* :command:`x\-tx\-poll`
  (c -- )
  wait for the terminal becomes ready and put 1 character to it (Poll, ATXmega)




Memory
------

* :command:`c@`
  ( a-addr - c1 )
  fetch a single byte from memory mapped locations

* :command:`cmove`
  (addr-from addr-to n -- )
  copy data in RAM, from lower to higher addresses

* :command:`cmove>`
  (addr-from addr-to n -- )
  copy data in RAM from higher to lower addresses.

* :command:`c!`
  ( c a-addr -- )
  store a single byte to RAM address

* :command:`(!i\-nrww)`
  ( n f-addr -- )
  writes n to flash memory using assembly code (code to be placed in boot loader section)

* :command:`(!i\-nvm)`
  ( n f-addr -- )
  writes n to flash at f-addr using NVM (ATXmega)

* :command:`@`
  ( a-addr -- n )
  read 1 cell from RAM address

* :command:`@e`
  ( e-addr - n)
  read 1 cell from eeprom

* :command:`@e`
  ( e-addr - n)
  read 1 cell from eeprom using NVM (ATXmega)

* :command:`@i`
  ( f-addr -- n1 )
  read 1 cell from flash

* :command:`@u`
  ( a-addr -- n )
  read 1 cell from RAM address

* :command:`fill`
  ( a-addr u c -- )
  fill u bytes memory beginning at a-addr with character c

* :command:`!`
  ( n addr -- )
  write n to RAM memory at addr, low byte first

* :command:`!e`
  ( n e-addr -- )
  write n (2bytes) to eeprom address

* :command:`!e`
  ( n e-addr -- )
  write n (2bytes) to eeprom address using nvm (atxmega)

* :command:`!i`
  ( n addr -- )
  Deferred action to write a single 16bit cell to flash

* :command:`!u`
  ( n addr -- )
  write n to RAM memory at addr, low byte first




Multitasking
------------

* :command:`cas`
  ( new old addr -- f )
  Atomic Compare and Swap: store new at addr and set f to true if contents of addr is equal to old.

* :command:`pause`
  ( -- )
  Fetch pause vector and execute it. may make a context/task switch




Numeric IO
----------

* :command:`base`
  ( -- a-addr )
  location of the cell containing the number conversion radix

* :command:`bin`
  ( -- )
  set base for number conversion to 2

* :command:`d.`
  ( d -- )
  singed PNO with double cell numbers

* :command:`d.r`
  ( d w -- )
  singed PNO with double cell numbers, right aligned in width w

* :command:`decimal`
  ( -- )
  set base for numeric conversion to 10

* :command:`digit?`
  ( c -- (number|)
  tries to convert a character to a number, set flag accordingly

* :command:`.`
  ( n -- )
  singed PNO with single cell numbers

* :command:`.r`
  ( n w -- )
  singed PNO with single cell numbers, right aligned in width w

* :command:`hex`
  ( -- )
  set base for number conversion to 16

* :command:`hld`
  ( -- addr )
  pointer to current write position in the Pictured Numeric Output buffer

* :command:`hold`
  ( c -- )
  prepend character to pictured numeric output buffer

* :command:`<\#`
  ( -- )
  initialize the pictured numeric output conversion process

* :command:`number`
  (addr len -- [n|d size] f)
  convert a string at addr to a number

* :command:`\#`
  ( d1 -- d2 )
  pictured numeric output: convert one digit

* :command:`\#>`
  ( d1 -- addr count )
  Pictured Numeric Output: convert PNO buffer into an string

* :command:`\#s`
  ( d -- 0 )
  pictured numeric output: convert all digits until 0 (zero) is reached

* :command:`sign`
  ( n -- )
  place a - in HLD if n is negative

* :command:`>number`
  ( ud1 c-addr1 u1 -- ud2 c-addr2 u2 )
  convert a string to a number  c-addr2/u2 is the unconverted string

* :command:`ud.`
  ( ud -- )
  unsigned PNO with double cell numbers

* :command:`ud.r`
  ( ud w -- )
  unsigned PNO with double cell numbers, right aligned in width w

* :command:`u.`
  ( u -- )
  unsigned PNO with single cell numbers

* :command:`u.r`
  ( u w -- )
  unsigned PNO with single cells numbers, right aligned in width w

* :command:`u0.r`
  ( ud n -- )
  Print n digits, fill in preceeding zeros if needed




Search Order
------------

* :command:`also`
  ( -- )
  Duplicate first entry in the current search order list

* :command:`definitions`
  ( -- )
  Make the compilation word list the same as the current first word list in the search order.

* :command:`forth`
  ( -- )
  replace the search order list with the system default list

* :command:`forth\-wordlist`
  ( -- wid )
  get the system default word list

* :command:`get\-current`
  ( -- wid)
  get the wid of the current compilation word list

* :command:`get\-order`
  ( -- widn .. wid0 n)
  Get the current search order word list

* :command:`only`
  ( -- )
  replace the order list with the system default list

* :command:`order`
  ( -- )
  print the wids of the current word list and the search order

* :command:`previous`
  ( -- )
  remove the first entry in the search order list

* :command:`search\-wordlist`
  ( c-addr len wid -- [ 0 ] | [ xt [-1|1]] )
  searches the word list wid for the word at c-addr/len

* :command:`set\-current`
  ( wid -- )
  set current word list to the given word list wid

* :command:`set\-order`
  ( widn .. wid0 n -- )
  replace the search order list

* :command:`wordlist`
  ( -- wid )
  create a new, empty wordlist




Stack
-----

* :command:`2r>`
  ( -- x1 x2 )
  (R: x1 x2 --)
  move DTOR to TOS

* :command:`2swap`
  ( x1 x2 x3 x4 -- x3 x4 x1 x2 )
  Exchange the two top cell pairs

* :command:`2>r`
  ( x1 x2 -- )
  (R: -- x1 x2)
  move DTOS to TOR

* :command:`depth`
  ( -- n )
  number of single-cell values contained in the data stack before n was placed on the stack.

* :command:`drop`
  ( n -- )
  drop TOS

* :command:`dup`
  ( n -- n n )
  duplicate TOS

* :command:`nip`
  ( n1 n2 -- n2 )
  Remove Second of Stack

* :command:`nr>`
  ( xn .. x0 n -- )
  (R: -- xn .. x0 n)
  move n items from data stack to return stack

* :command:`n>r`
  ( xn .. x0 n -- )
  (R: -- xn .. x0 n)
  move n items from data stack to return stack

* :command:`over`
  ( x1 x2 -- x1 x2 x1 )
  Place a copy of x1 on top of the stack

* :command:`pick`
  ( xu ... x1 x0 u -- xu ... x1 x0 xu )
  access the stack as an array and fetch the u-th element as new TOS

* :command:`?dup`
  ( n1 -- [ n1 n1 ] | 0)
  duplicate TOS if non-zero

* :command:`rot`
  ( n1 n2 n3 -- n2 n3 n1)
  rotate the three top level cells

* :command:`rp0`
  ( -- addr)
  start address of return stack

* :command:`rp@`
  (  -- n)
  current return stack pointer address

* :command:`rp!`
  ( addr  -- )
  (R: -- x*y)
  set return stack pointer

* :command:`r@`
  ( -- n)
  (R: n -- n )
  fetch content of TOR

* :command:`r>`
  ( -- n )
  (R: n --)
  move TOR to TOS

* :command:`sp`
  ( -- addr)
  address of user variable to store top-of-stack for inactive tasks

* :command:`sp0`
  ( -- addr)
  start address of the data stack

* :command:`sp@`
  (  -- addr )
  current data stack pointer

* :command:`sp!`
  ( addr -- i*x)
  set data stack pointer to addr

* :command:`swap`
  ( n1 n2 -- n2 n1)
  swaps the two top level stack cells

* :command:`>r`
  ( n -- )
  (R: -- n)
  move TOS to TOR




String
------

* :command:`compare`
  ( r-addr r-len f-addr f-len --  f)
  compares two strings in RAM

* :command:`count`
  ( c-addr1 -- c-addr2 len)
  convert addr of counted string to address of the first characater and length of the string

* :command:`cscan`
  ( addr1 n1 c -- addr1 n2 )
  Scan string at addr1/n1 for the first occurance of c, leaving addr1/n2, char at n2 is first non-c character

* :command:`cskip`
  ( addr1 n1 c -- addr2 n2 )
  skips leading occurancies in string at addr1/n1 leaving addr2/n2 pointing to the 1st non-c character

* :command:`parse`
  ( char "ccc<char>" -- c-addr u )
  in input buffer parse ccc delimited string by the delimiter char.

* :command:`parse\-name`
  ( "<name>" -- c-addr u )
  In the SOURCE buffer parse whitespace delimited string. Returns string address within SOURCE.

* :command:`place`
  ( addr1 len1 addr2 -- )
  copy string as counted string

* :command:`/string`
  ( addr1 u1 n -- addr2 u2 )
  adjust string from addr1 to addr1+n, reduce length from u1 to u2 by n

* :command:`sliteral`
  (C: addr len -- )
  (C: addr len -- )
  compiles a string to flash, at runtime leaves ( -- flash-addr count) on stack

* :command:`tolower`
  ( C --  c)
  if C is an uppercase letter convert it to lowercase

* :command:`toupper`
  ( c -- C )
  if c is a lowercase letter convert it to uppercase




System
------

* :command:`accept`
  ( addr +n1 -- +n2 )
  receive a string of at most n1 characters at addr until n2 characters are reveived or cr/lf detected.

* :command:`allot`
  ( n -- )
  allocate or release memory in RAM

* :command:`built`
  ( -- )
  (R: -- )
  prints the date and time the hex file was generated

* :command:`cold`
  ( -- )
  start up amforth.

* :command:`defer@`
  ( xt1 -- xt2 )
  returns the XT associated with the given XT

* :command:`defer!`
  ( xt1 xt2 -- )
  stores xt1 as the xt to be executed when xt2 is called

* :command:`(value)`
  ( -- n )
  runtime of value

* :command:`execute`
  ( xt -- )
  execute XT

* :command:`f\_cpu`
  ( -- d )
  put the cpu frequency in Hz on stack

* :command:`interpret`
  ( -- )
  (R: i*x - j*x )
  interpret input word by word.

* :command:`is`
  ( xt1 c<char> -- )
  stores xt into defer or compiles code to do so at runtime

* :command:`?execute`
  ( xt|0 -- )
  execute XT if non-zero

* :command:`quit`
  ( -- )
  main loop of amforth. accept - interpret in an endless loop

* :command:`refill`
  ( -- f )
  refills the input buffer

* :command:`refill\-tib`
  ( -- f )
  refills the input buffer

* :command:`source`
  ( -- addr n )
  address and current length of the input buffer

* :command:`source\-tib`
  ( -- addr n )
  address and current length of the input buffer

* :command:`warm`
  ( nx* -- )
  (R: ny* -- )
  initialize amforth further. executes turnkey operation and go to quit




System Value
------------

* :command:`dp`
  ( -- f-addr )
  address of the next free dictionary cell

* :command:`edp`
  ( -- e-addr )
  address of the next free address in eeprom

* :command:`ee\-user`
  ( -- v)
  address of the default user area content in eeprom

* :command:`environment`
  ( -- wid)
  word list identifier of the environmental search list

* :command:`here`
  ( -- addr )
  address of the next free data space (RAM) cell

* :command:`turnkey`
  ( -- n*y )
  Deferred action during startup/reset




System Variable
---------------

* :command:`>in`
  ( -- a-addr )
  pointer to current read position in input buffer

* :command:`latest`
  ( -- addr )
  system LATEST

* :command:`\#tib`
  ( -- addr )
  variable holding the number of characters in TIB

* :command:`pad`
  ( -- a-addr )
  Address of the temporary scratch buffer.

* :command:`state`
  ( -- addr )
  system state

* :command:`tib`
  ( -- addr )
  terminal input buffer address

* :command:`up@`
  ( -- addr )
  get user area pointer

* :command:`up!`
  ( addr -- )
  set user area pointer




Time
----

* :command:`1ms`
  ( -- )
  busy waits (almost) exactly 1 millisecond

* :command:`ms`
  ( n -- )
  busy waits the specified amount of milliseconds




Tools
-----

* :command:`[char]`
  ( -- c )
  (C: "<space>name" -- )
  skip leading space delimites, place the first character of the word on the stack

* :command:`[compile]`
  ( -- c )
  (C: "<space>name" -- )
  skip leading space delimites, place the first COMPILEacter of the word on the stack

* :command:`char`
  ( "<spaces>name" -- c )
  copy the first character of the next word onto the stack

* :command:`.s`
  ( -- )
  stack dump

* :command:`ee>ram`
  ( e-addr r-addr len -- )
  copy len cells from eeprom to ram

* :command:`@e[]`
  ( ee-addr -- itemn .. item0 n)
  Get an array from EEPROM

* :command:`find`
  ( addr --  addr 0 | xt -1 | xt 1 )
  search wordlists for entry taken as counted string from addr

* :command:`find\-name`
  ( addr len --  0 | xt -1 | xt 1 )
  search wordlists for the name from string addr/len

* :command:`icompare`
  ( r-addr r-len f-addr f-len --  f)
  compares string in RAM with string in flash

* :command:`icount`
  ( addr -- addr+1 n )
  get count information out of a counted string in flash

* :command:`init\-user`
  ( -- )
  setup the default user area from eeprom

* :command:`itype`
  ( addr n --  )
  reads string from flash and prints it

* :command:`noop`
  ( -- )
  do nothing

* :command:`?stack`
  ( --  )
  check stack underflow, throw exception -4

* :command:`show\-wordlist`
  ( wid -- )
  prints the name of the words in a wordlist

* :command:`!e[]`
  ( recn .. rec0 n ee-addr -- )
  Write a list to EEPROM

* :command:`to`
  ( n <name> -- )
  store the TOS to the named value (eeprom cell)

* :command:`unused`
  ( -- n )
  Amount of available RAM (incl. PAD)

* :command:`ver`
  ( -- )
  print the version string

* :command:`word`
  ( c -- addr )
  skip leading delimiter character and parse SOURCE until the next delimiter. copy the word to HERE

* :command:`words`
  ( -- )
  prints a list of all (visible) words in the dictionary



