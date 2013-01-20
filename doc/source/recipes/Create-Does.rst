==================
Using create/does>
==================
A subtle error will be made with the following code

::

 : const create , does> @ ;

This code does *not* work as expected. The value compiled with ``,``
is compiled into the dictionary, which is read using the ``@i`` word. The
correct code is

::

 : const create , does> @i ;

Similiarly the sequence

::

 : world create ( sizeinformation )  allot
  does> ( size is on stack) ... ;

does not work. It needs to be changed to

::

 : world variable ( sizeinformation) allot
    does> @i ( sizeinformation is now on stack) ... ;
 ;

