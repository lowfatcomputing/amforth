
\ Demonstrates how to define a named word for a 1-wire ID
\ for further information see comments in 1wire.frt
\   [c] 2012 Bradford J. Rodriguez for the inital version
\ modified 

$28 $4C $75 $CC $2 $0 $0 $CD 1w.device: sensor1

: 1w.convert ( addr -- )  ( start a temperature conversion )
   1w.matchrom
   $44 c!1w
;

: 1w.readtemp ( addr -- n )   ( read first 2 bytes of scratchpad )
   dup >r 1w.matchrom
   $be c!1w  c@1w ( LSbyte )  c@1w ( MSbyte )
   8 lshift or    ( convert 2 bytes to single 16-bit value )
   r> c@
   $28 = if     \ there are a few temp sensors with different
                \ data layout available
      5 8 */    ( convert temp to tenths degree Celsius )
   else
      abort" unknown device family code"
   then
;

\ Example usage (prints the centigrades)
\ sensor1 1w.convert 750 ms sensor1 1w.readtemp u.

