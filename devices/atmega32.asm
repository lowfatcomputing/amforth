.nolist
.include "m32def.inc"
.list

  ; first address of RAM 
  .equ ramstart = $60
  .equ stackstart = RAMEND - $80
  .equ PADSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .set PAGEMASK =  ~ ( PAGESIZE - 1 )

  .equ nrww = $3800
  .equ codestart = $26
  
; some hacks
  .equ RWWSRE = ASRE
 