\ spi routines

marker _spi_

hex

1 6 lshift constant spi.SPE
1 5 lshift constant spi.MSB
1 4 lshift constant spi.MASTER

0 constant spi.mode0
4 constant spi.mode1
8 constant spi.mode2
c constant spi.mode3

0 constant spi.f/4
1 constant spi.f/16
2 constant spi.f/64
3 constant spi.f/128

\ enable spi
\ ... spi.MASTER spi.f/16 or spi.mode3 or +spi ...
: +spi ( modeflags -- )
    spi.SPE or 
    SPCR c!   
;

\ double speed mode
: +spi2x 
   1 SPDR c!
;

: -spi2x
   0 SPDR c!
;

\ turn off spi
: -spi ( - )
    0 SPCR c!
;

