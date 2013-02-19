===============
Build Timestamp
===============

AmForth has a version number, that can be read with an
environment query:

::

 > s" version" environment? drop .
 50 ok
 > s" version" environment search-wordlist drop .
 50 ok
 >

In addition to this information (esp for those who use the
newest revision from the source repository) the built timestamp
maybe useful as well. To get it, AmForth needs to be compiled with
the file :file:`words/built.asm` included. Calling it prints the
date and time the hexfile was generated in the current terminal.

::

 > built
 Nov 22 2012 23:12:94 ok
 >

The assembly code uses some avr asm specific macros, the
string length information is hardcoded.

::

 ; ( -- ) System
 ; R( -- )
 ; prints the date and time the hex file was generated
 VE_BUILT:
    .dw $ff05
    .db "built",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BUILT
 XT_BUILT:
    .dw DO_COLON
 PFA_BUILT:
    .dw XT_DOSLITERAL
    .dw 11
    .db __DATE__ ; generated from assembler
    .dw XT_ITYPE
    .dw XT_SPACE
    .dw XT_DOSLITERAL
    .dw 8
    .db __TIME__ ; generated from assembler
    .dw XT_ITYPE
    .dw XT_EXIT

Subversion Revision Number
--------------------------

If you are using the subversion sandbox from the sourceforge
repository, the following solution from Enoch provides the subversion
revision number.

His solutions extends the Makefile to generate a small forth
snippet that contains the information as a string.

::

 AMFORTH := ../amforth/trunk
 CORE := $(AMFORTH)/core
 DEVICE := $(CORE)/devices/$(MCU)

 SVNVERSION := `svnversion -n $(AMFORTH)`

 $(TARGET).hex: $(TARGET).asm *.inc words/*.asm $(CORE)/*.asm $(CORE)/words/*.asm
 $(DEVICE)/*.asm
        $(XASM) -I $(CORE) -o $(TARGET).hex -e $(TARGET).eep -l $(TARGET).lst $(TARGET).asm
        echo ": svnversion .\" r$(SVNVERSION)\" ;" >svnversion.frt

Running make creates the file :file:`svnversion.frt` in the current directory that
contains the output of the :file:`svnversion -n` command. Uploading this
file creates the forth command _svnversion_ that prints it in
the terminal.

.. code-block:: forth

 \ #include svnversion.frt

 : myturnkey
 \ snip
    applturnkey
    space svnversion
 ;

 ' myturnkey is turnkey

 \        The result:
 \        ~~~~~~~~~~~

        amforth 4.9 AT90CAN128 r1306M
