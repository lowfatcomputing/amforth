Date: 27.10.2006
Author: mtrute

amforth: Forth for Atmel ATmega micro controllers.

amforth is a forth running on an atmega mc. It uses
the serial line uart0 (hard coded) as the terminal.
Please not, there are no controlling characters (BS) or
a working command line.

Serial line settings are 9600 8N1, no hardware handshake.

amforth is not a crosscompiler, it runs completely on the
micro controller.

amforth uses the indirect threading model. 

Development hardware is a evaluation board running an atmega32
at 8 MHz with a few led's and pushbuttons. Targets for the
final version are robots (asuro and ct-bot) and model railroad
systems using atmega32 and atmega8 (atmega168).

The source is developed with avra 1.0.1 (linux) and AVR Studio 4.12
(Windows). all defines are in amforth.asm and makefile. Please note
that there are two files to upload (hex and eep.hex!)

Additional words (complete list is displayed with the word
words)
    e@ and e! work with eeprom, they read and store a cell (16 bit)
	with the byte address given.
    i@: reads a flash cell, address is the word address!
    not: inverts the meaning of the logical flag in TOS, identical to
	0=
    @,!,c@ and c! uses memory addresses. registers and io ports
	can be accessed using there memory addresses! 

Current state
    Sourceforge has accepted the project.

    pure 16 bit arithmetics and stack operation. signed numbers are
    poorly supported.
    
    all words should have ans94 (core with some from ext) stack diagrams
    
    interpreter is working. number conversion does no error checking
	
    compiler (colon) works.

    Some secondary words cannot be reverse compiled to forth code.
    
ToDo
    documentation and web site
    optimize build process for different mc (atmega168 is known
        to work with minor changes in usart.asm)

Wishlist
    move TOS from data stack to a register pair


Post scriptum

amforth is influenced by avrforth from Daniel Kruszyna http://krue.net/avrforth/
and by the series of articles "von der Pike auf" found at the "vierte dimension" 
at http://www.forth-ev.de/
