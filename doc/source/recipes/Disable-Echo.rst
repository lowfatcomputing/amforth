===================================
Disabling the terminal command echo
===================================

Sometimes it may be desirable to turn off the echo function
in ``accept`` when entering commands. One solution to
do it is to temporarily redirect the ``emit`` to do
nothing. 

::

 variable tmpemit
 : -emit ['] emit defer@ tmpemit !
        ['] drop is emit ;
 : +emit tmpemit @ is emit ;
 > 1 2 3
 ok
 >  .s
   0 809 3
   1 80B 2
   2 80D 1
 ok
 > -emit .s +emit
 ok
 >

Alternativly the definition

::

 : +emit tmpemit @ ['] emit defer! ;

could be used as well.
