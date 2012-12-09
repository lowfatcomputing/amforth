\
\ port definitions for Atmegas as found on the Arduino Standard
\ Atmega168, Atmega328p
\
decimal

PORTD 0 portpin: digital.0
PORTD 1 portpin: digital.1
PORTD 2 portpin: digital.2
PORTD 3 portpin: digital.3
PORTD 4 portpin: digital.4
PORTD 5 portpin: digital.5
PORTD 6 portpin: digital.6
PORTD 7 portpin: digital.7

PORTB 0 portpin: digital.8
PORTB 1 portpin: digital.9
PORTB 2 portpin: digital.10
PORTB 3 portpin: digital.11
PORTB 4 portpin: digital.12
PORTB 5 portpin: digital.13

PORTC 0 portpin: digital.14
PORTC 1 portpin: digital.15
PORTC 2 portpin: digital.16
PORTC 3 portpin: digital.17
PORTC 4 portpin: digital.18
PORTC 5 portpin: digital.19

\ some digital ports have an alternative use
\ the numbers correspond to the above digital.X

10 constant SPI:SS
11 constant SPI:MOSI
12 constant SPI:MISO
13 constant SPI:SCK

18 constant TWI:SDA
19 constant TWI:SCL
13 constant LED_BUILTIN

14 constant analog.0
15 constant analog.1
16 constant analog.2
17 constant analog.3
18 constant analog.4
19 constant analog.5
\ not on all chips but defined in arduino sources
20 constant analog.6
21 constant analog.7
