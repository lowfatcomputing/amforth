Date: 22.5.2007

Author: mtrute@users.sourceforge.net (will be forwarded)

License: General Public License (GPL) Version2 from 1991. See the
	file LICENSE.txt or http://www.gnu.org/licenses/gpl.html

amforth: interactive Forth for Atmel ATmega micro controllers.

amforth is a forth running on an atmega mc. It uses
the serial line uart0 (hard coded) as the terminal.
It does not need additional hardware, but can be extended
to make use of it.

Default serial line settings are 9600 8N1, no handshake.

amforth uses the indirect threading model. 

Development hardware is an evaluation board running an atmega32
at 8 & 16 MHz MHz with a few led's and pushbuttons. Targets for the
final version are robots (asuro and ct-bot) and model railroad
systems using atmega32 and atmega8 (atmegaX8). Other controllers
work with minor adjustments. Feedback is welcome!


Current state
    The core forth system works fine. The word set should be
    complete, the missing words to achieve 100% ANS 94 forth
    compatability may never get implemented. 

    All words should have ans94 (core with some from ext) stack 
    diagrams, but not nessesairly the complete semantics.
    
    As of release 2.1 amforth is turned into (some kind of) a library. 
    See http://amforth.svn.sourceforge.net/viewvc/amforth/appl/    
    for examples how to include it into your project
    
ToDo
    documentation and web site (partly done)
    more/better standards compliance?

Contact
    mailto:amforth-devel@lists.sourceforge.net for all questions.

Post scriptum

amforth is influenced by (early versions of) avrforth from Daniel Kruszyna 
http://krue.net/avrforth/ and by the series of articles "Forth von der Pike auf" 
by Ron Minke found at the "vierte dimension" at http://www.forth-ev.de/
