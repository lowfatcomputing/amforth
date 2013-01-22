\ 2013-01-21  EW

marker --1w.crc8--

include 1wire.crc8.fs

\ testdata from Dallas Application Note 27
\ A2 00 00 00 01 B8 1C 02
\ ^^crc        fam.code^^

: run_test
  $A2                         \ crc
  $00 $00 $00 $01 $B8 $1C $02 \ rom id 
  #7                          \ N
  .s
  1w.crc8? if
    ." crc ok"
  else
    ." crc error"
  then
  cr
  $A2 1+                      \ WRONG CRC!
  $00 $00 $00 $01 $B8 $1C $02 \ rom id 
  #7                          \ N
  .s
  1w.crc8? if
    ." crc ok"
  else
    ." crc error"
  then
  cr
;

