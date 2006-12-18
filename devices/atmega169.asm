.nolist
.include "m169def.inc"
.list

  ; first address of RAM 
  .equ ramstart = $100
  .equ stackstart = RAMEND - $80
  .equ PADSIZE  = $10 ; 16 bit cellsize with binary representation
  .equ TIBSIZE  = $64 ; 80 characters is one line...
  .equ CELLSIZE = 2   ;
  .equ UPSIZE   = 16  ; size of user area (at least 16 bytes)

  .set PAGEMASK =  ~ ( PAGESIZE - 1 )

  .equ nrww = $1c00
  .equ codestart = $2d
 
  .equ INT1addr = PCINT1addr
  .equ UBRRL = UBRR0L
  .equ UBRRH = UBRR0H
  .equ UCSRC = UCSR0C
  .equ UCSRB = UCSR0B
  .equ UDR = UDR0
  .equ URSEL = 7
  .equ UCSZ0 = UCSZ00
  .equ TXEN = TXEN0
  .equ RXEN = RXEN0
  .equ RXCIE = RXCIE0
  .equ UDRIE = UDRIE0
  .equ SPMCR = SPMCSR
