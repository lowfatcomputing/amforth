\ V 1.2 15.06.2007

\ Code: Matthias Trute
\ Text: M.Kalus

\ A named port pin puts a bitmask on stack, wherin the set bit indicates which
\ bit of the port register corresponds to the pin. 
\ And then puts the address of its port on stack too. 

\ Use it this way:
\ PORTD 7 portpin: PD.7  ( define portD pin #7)
\ PD.7 high              ( turn portD pin #7 on, i.e. set it high-level)
\ PD.7 low               ( turn portD pin #7 off, i.e. set it low-level)
\ PD.7 <ms> toggle       ( turn portD pin #7 for <ms> high and low)
\ the following words are for "real" IO pins only
\ PD.7 pin_output        ( set DDRD so that portD pin #7 is output)
\ PD.7 pin_input         ( set DDRD so that portD pin #7 is input)
\ PD.7 pin_high?         ( true if pinD pin #7 is high)
\ PD.7 pin_low?          ( true if pinD pin #7 is low)

hex

\ At compiletime:
\ Store combination of portaddress and bit number in a cell and give it a name.
\ At runtime:
\ Get pinmask and portaddress on stack.
: portpin: create ( C: "ccc" portadr n -- ) ( R: -- pinmask portadr )
    1 swap lshift
    8 lshift or ,               \ packed value
  does> i@                      \ get packed value
    dup 8 rshift swap ff and    \ 
;

\ Turn a port pin on, dont change the others.
: high ( pinmask portadr -- )
    dup  ( -- pinmask portadr portadr )
    c@   ( -- pinmask portadr value )
    rot  ( -- portadr value pinmask )
    or   ( -- portadr new-value)
    swap ( -- new-value portadr)
    c!
;

\ Turn a port pin off, dont change the others.
: low ( pinmask portadr -- )
    dup  ( -- pinmask portadr portadr )
    c@   ( -- pinmask portadr value )
    rot  ( -- portadr value pinmask )
    invert and ( -- portadr new-value)
    swap ( -- new-value port)
    c!
;

\ toggle the pin
: toggle ( pinmask portaddr time -- )
    >r
    over over high 
    r> 0 ?do 1ms loop 
    low 
;

\ Only for PORTx bits, 
\ because address of DDRx is one less than address of PORTx.

\ Set DDRx so its corresponding pin is output.
: pin_output ( pinmask portadr -- )
    1- high
;

\ Set DDRx so its corresponding pin is input.
: pin_input  ( pinmask portadr -- )   
    1- low
;

\ PINx is two less of PORTx
: pin_high? ( pinmask portaddr -- f)
    1- 1- c@ and
;

: pin_low? ( pinmask portaddr -- f)
    1- 1- c@ invert and
;

\ finis
