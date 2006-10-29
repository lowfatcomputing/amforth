.nolist
.include "m168def.inc"
.list

  ; first address of RAM 
  .equ ramstart = $100
  .equ stackstart = RAMEND - $80
  .equ PADSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .set PAGEMASK =  ~ ( PAGESIZE - 1 )

  .equ nrww = $1c00
  .equ codestart = $26
 