Date: 1.12.2006
Author: mtrute

amforth: interactive Forth for Atmel ATmega micro controllers.

amforth is a forth running on an atmega mc. It uses
the serial line uart0 (hard coded) as the terminal.

Serial line settings are 9600 8N1, no handshake.

amforth uses the indirect threading model. 

Development hardware is an evaluation board running an atmega32
at 8 MHz with a few led's and pushbuttons. Targets for the
final version are robots (asuro and ct-bot) and model railroad
systems using atmega32 and atmega8 (atmegaX8).

The source is developed with avra 1.0.1 (linux) and AVR Studio 4.12
(Windows). All settings are in amforth.asm and makefile. Please note
that there are two files to upload (hex and eep.hex!)

Additional words (complete list is displayed with the word
words)
    e@ and e! work with eeprom, they read and store a cell (16 bit)
	with the byte address given. Memory alloctaion is done
	with eallot and ehere (similiar to allot and here)
    i@: reads a flash cell, address is the word address!
    
    not: inverts the meaning of the logical flag in TOS, identical to
	0=
    @,!,c@ and c! uses memory addresses. registers and io ports
	can be accessed using there memory addresses! 

Current state
    The core forth system works fine. The word set should be
    complete, the missing words to achieve 100% ANS 94 forth
    compatability may never get implemented. 

    All words should have ans94 (core with some from ext) stack diagrams,
    words not found in the standard do have there own ones ;=)

    Some secondary words cannot be reverse compiled to forth code.
    
ToDo
    documentation and web site (partly done)
    optimize build process for different mc (atmega168 is known
        to work with minor changes in usart.asm)

Wishlist
    move TOS from data stack to a register pair


Post scriptum

amforth is influenced by avrforth from Daniel Kruszyna http://krue.net/avrforth/
and by the series of articles "von der Pike auf" found at the "vierte dimension" 
at http://www.forth-ev.de/
