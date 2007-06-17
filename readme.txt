Date: 17.6.2007

Author: Matthias Trute <mtrute@users.sourceforge.net> 
	    (will be forwarded)

License: General Public License (GPL) Version2 from 1991. See the
	file LICENSE.txt or http://www.gnu.org/licenses/gpl.html

amforth is an interactive 16bit Forth for Atmel ATmega micro controllers.
It does not need additional hard or software. It works completly on
the controller (no cross-compiler). Porting to different ATmegas is easy.

amforth uses the indirect threading model. The forth dictionary
is in the flash memory, new words are compiled directly into
flash.

Default terminal is the serial line (usart0) at 9600 8N1, no flow
control.

amforth is implemented in assembly and forth. The code is stable 
and well tested.

All words have ans94-draft6 (core and extension word sets) stack 
diagrams, but not nessesairly the complete semantics. Some words
from the standard are omitted, ask for them if yu really need them.

Since release 2.1 amforth is a library.
See http://amforth.svn.sourceforge.net/viewvc/amforth/appl/
and http://amforth.sourceforge.net/ for examples how to deploy
amforth with your project.

Development hardware are evaluation boards running varios atmega's
at 8 & 16 MHz MHz with a few led's and pushbuttons and the
AVR Butterfly.

ToDo
    documentation and web site (partly done)

Contact, Bugreports, Questions, Wishes etc:
    mailto:amforth-devel@lists.sourceforge.net


Post scriptum

amforth is influenced by (early versions of) avrforth from Daniel Kruszyna 
http://krue.net/avrforth/ and by the series of articles "Forth von der Pike auf" 
by Ron Minke published at the "vierte dimension" at http://www.forth-ev.de/
