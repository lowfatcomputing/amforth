Date: 4.1.2007
Author: mtrute

amforth: interactive Forth for Atmel ATmega micro controllers.

amforth is a forth running on an atmega mc. It uses
the serial line uart0 (hard coded) as the terminal.

Serial line settings are 9600 8N1, no handshake.

amforth uses the indirect threading model. 

Development hardware is an evaluation board running an atmega32
at 8 MHz with a few led's and pushbuttons. Targets for the
final version are robots (asuro and ct-bot) and model railroad
systems using atmega32 and atmega8 (atmegaX8). Other controllers
work too but may require minor adjustments. Feedback is welcome!


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
    interrupts sometimes behave strange.

Wishlist
    move TOS from data stack to a register pair


Post scriptum

amforth is influenced by (early versions of) avrforth from Daniel Kruszyna 
http://krue.net/avrforth/ and by the series of articles "Forth von der Pike auf" 
by Ron Minke found at the "vierte dimension" at http://www.forth-ev.de/
