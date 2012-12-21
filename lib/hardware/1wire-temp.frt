
\ Demonstrates how to define a named word for a 1-wire ID
\ for further information see comments in 1wire.frt
\   [c] 2012 Bradford J. Rodriguez for the inital version
\ modified 

create sensor1 28 , 4C , 75 , CC , 2 , 0 , 0 , CD ,

: owconvert ( addr -- )  ( start a temperature conversion )
   sendid		( remember to allow 750 msec for conv.)
   $44 owput
;

: readtemp ( addr -- n )   ( read first 2 bytes of scratchpad )
   sendid
   $be owput  owget ( LSbyte )  owget ( MSbyte )
   8 lshift or    ( convert 2 bytes to single 16-bit value )
;

\ Demonstrates how to scale temperature and format for PAD )
\ Expects the value 'n' returned by READTEMP.  N=8 corresponds )
\ to 0.5 degrees Celsius.  Format is [-]nn.n )

: temp>pad ( n -- )
   5 8 */    ( convert temp to tenths degree Celsius )
   s>d swap over dabs <# # [char] . hold #s rot sign #>
   pad place
;

\ Example usage: 
\ sensor1 owconvert  750 ms  sensor1 readtemp temp>pad
\ pad count type

