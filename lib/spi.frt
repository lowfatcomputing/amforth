\ SPI routines
\ V.1.0, Matthias Trute
\ V.1.1, 15.07.2009, Lubos Pekny, choose asm version

PORTB 04 portpin: SPI_SS       \ PB.4
: SPI_PORT <bit> F0 PORTB ;    \ PB.4,5,7 out, PB.6 in

1 6 lshift constant spi.SPE    \ SPI enabled
1 5 lshift constant spi.DORD   \ Data order, 0=MSB first
1 4 lshift constant spi.MSTR   \ Master mode

0 constant spi.mode0  \ sample rising/--
4 constant spi.mode1  \ --/sample falling
8 constant spi.mode2  \ sample falling/--
c constant spi.mode3  \ --/sample rising

0 constant spi.f/4
1 constant spi.f/16
2 constant spi.f/64
3 constant spi.f/128


  \ enable spi, set I/O
  \ MSTR + f/64 + mode3
: +spi ( -- )
    <bit>
    B0 SPI_PORT pin!      \ HLHH output
    B0 SPI_PORT 1- pin!   \ oiooxxxx
    spi.SPE spi.MSTR spi.f/64 or or
    spi.mode3 or SPCR c!
    0 SPSR c! ;


  \ turn off spi, all I/O input
: -spi ( - )
    <bit>
    0 SPI_PORT 1- pin!    \ input
    0 SPI_PORT pin!       \ no pullup
    0 SPCR c! ;


  \ set clk, SPCR.0,1, f/xxx
: spi_clk ( c -- )
    <bit> 03 SPCR pin! ;  \ c pinmask port --


  \ double speed mode
: +spi2x 
    <bit> 1 SPSR c! ;


: -spi2x
    <bit> 0 SPSR c! ;

\ -sptx Stop transmit

  \ send a byte
: spi! ( c -- )
    <bit> SPDR c! begin SPSR c@ 80 and until ;


  \ receive a byte
: spi@ ( -- c)
    <bit> FF spi! SPDR c@  ; 


\ ------ assembler version -----
: spi!,  ( R16 )            \ asm macro
    assembler
    <bit> SPDR assembler R16 sts, \ SPDR c!
  label>
    R16 <bit> SPSR assembler lds,
    R16 80 andi,            \ SPSR c@ 80 and
  <radr breq, ;             \ until


code spi! ( c -- )
    R16 TOSL mov,           \ c --
    loadtos,                \ delete c 
    spi!,                   \ send c
end-code


code spi@ ( -- c )
    savetos,
    R16 FF ldi,             \ FF --
    spi!,                   \ send FF
    TOSL <bit> SPDR assembler lds, \ SPDR c@
    TOSH clr,
end-code

\ end of file
