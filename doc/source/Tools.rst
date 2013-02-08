=====
Tools
=====

Host
----

There a few number of tools on the host side (PC) that
are specifically written to support amforth. They are
written in script languages like Perl and python and
should work on all major operating systems. They are
not needed to use amforth but may be useful.

Part description Converter
..........................

The :command:`pd2amforth.pl` script reads a part
description file in XML format (comes with
the Atmel Studio package) and produces
the controller specific :file:`devices/controllername/*` files.

Documentation
.............

The tool :command:`makerefcard`
reads the assembly files from the
:file:`words` subdirectory and creates a reference card. The
resulting LaTeX file needs to be processed with
:command:`latex` to generate a nice looking overview of all words
available in the amforth core system.

The command :command:`make-htmlwords`
creates the linked overview of all words on the
amforth homepage.

Uploader
........

To transfer forth code to the microcontroller some
precautions need to taken. During a flash write
operation all interrupts are turned off. This may
lead to lost characters on the serial line. One
solution is to send very slowly and hope that the
receiver gets all characters. A better solution is
to send a character and wait for the echo from
the controller. This may sound awfully slow at the
glance but it turned out to be a fast and reliable
strategy.

An example for the first strategy can be used with
the program :command:`ascii-xfer`. Calling
it with the command line parameters

CMDSYN:  ascii-xfr -s -c $delay_char -l $delay_line $file &gt; $tty

will work but the upload of longer files needs a
very long time: $delay_char can be 1 or 2 ms,
$delay_line around 800 ms.

An example for the alternative algorithm are the
tools :command:`amforth-upload.py`
and :command:`amforth-term.py`. They
are python scripts that uses a few external
libraries which can usually installed with the
standard package managers.

These tools provide some additional value beyond
simply transferring text files. They analyze the
source code and obey some additional commands.
One command is the

CMDSYN:  #include filename
. When this command is found
the content of the file :command:`filename`
is sent to the controller.

Controller
----------

There are a few tools that may be useful on the controller. They
are implemented as loadable forth code that may affect internal
data and workflows in a non-portable way. In particular are available
a profiler (counting calls to words), a call tracer (printing a
stack trace while executing the words), a timing utility (benchme),
a few memory dump tools and a :command:`see` that may be
useful to revert the compilation process (gets some forth code
from compiled words).

Profiler
........

After loading the file :file:`lib/profiler.frt`
into the controller, every colon word gets a counter
(1cell) which is incremented every time the word is called. Since this cell
can be used like any variable, it can be reset any time as well.

::

 > : foo 1 ;
 ok
 > profiler:on
 ok
 > ' foo xt>prf @ .
 0 ok
 > foo
 ok
 > ' foo xt>prf @ .
 1 ok
 > 0 ' foo xt>prf !
 ok
 >

Tracer
......

After loading the file :file:`lib/tracer.frt` into the controller, every word being
defined afterwards prints it's name and the stack content at runtime.

::

 > : foo 1 ;
 ok
 > : bar 2 foo ;
 ok
 > : baz 3 bar ;
 ok
 > trace:on
 ok
 > baz

 baz

 bar
 0 2221 3

 foo
 0 2219 2
 1 2221 3
 ok
 > .s
 0 2217 1
 1 2219 2
 2 2221 3
 ok
 > trace:off
 ok
 > baz
 ok
 >


