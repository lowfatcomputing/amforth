;; AUTHORs
;   B. J. Rodriguez (MSP 430)
;   Matthias Trute (AVR Atmega)
; COPYRIGHT
;   (c) 2012 Bradford J. Rodriguez for the 430 code and API

;  adapted 430 assembly code to AVR
;  wishlist: 
;     use a configurable pin at runtime, compatible with bitnames.frt
;     no external pull up, no external power supply for devices
;     ???
;
;.EQU OW_BIT=4
;.equ OW_PORT=PORTE
.set OW_DDR=(OW_PORT-1)
.set OW_PIN=(OW_DDR-1)

;               F_CPU
;    µsec   16000000   14745600    8000000  1000000
;    1            16      14,74          8        1
;    10          160     147,45         80       10
;    100        1600    1474,56        800      100
;    1000      16000   14745,6        8000     1000
;
; cycles = µsec * f_cpu / 1e6
; n_loops=cycles/5
;
;     cycles already used will be subtracted from the delay
;     the waittime resolution is 1 cycle (delay from exact to +1 cycle)
;     the maximum delay at 20MHz (50ns/clock) is 38350ns
;     waitcount register must specify an immediate register
;
.macro   delay
      .set cycles = ( ( @0 * F_CPU ) / 1000000 )
      .if (cycles > ( 256 * 255 * 3 + 2))
        .error "MACRO delay - too many cycles to burn"
      .else
        .if (cycles > 6)
          .set  loop_cycles = (cycles / 4)      
          ldi   zl,low(loop_cycles)
          ldi   zh,high(loop_cycles)
delay_loop:
          sbiw  Z, 1
          brne  delay_loop
          .set  cycles = (cycles - (loop_cycles * 4))
        .endif
        .if (cycles > 0)
          .if   (cycles & 4)
            rjmp  pc+1
            rjmp  pc+1
          .endif
          .if   (cycles & 2)
            rjmp  pc+1
          .endif
          .if   (cycles & 1)
            nop
          .endif
        .endif
      .endif
.endmacro

;****f* 4e-onewire/OWRESET
; NAME
;   OWRESET
; SYNOPSIS
;   OWRESET ( -- f )  Initialize 1-wire devices; return true if present
; DESCRIPTION
;   This configures the port pin used by the 1-wire interface, and then
;   sends an "initialize" sequence to the 1-wire devices.  If any device
;   is present, it will be detected.
;
;   Timing, per DS18B20 data sheet:
;   a) Output "0" (drive output low) for >480 usec.
;   b) Output "1" (let output float).
;   c) After 15 to 60 usec, device will drive pin low for 60 to 240 usec.
;      So, wait 75 usec and sample input.
;   d) Leave output high (floating) for at least 480 usec.
;******
; ( -- f )
; Hardware
; Initialize 1-wire devices; return true if present
VE_OW_RESET:
    .dw $ff07
    .db "owreset",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OW_RESET
XT_OW_RESET:
    .dw PFA_OW_RESET
PFA_OW_RESET:
    savetos
    clr tosh
    ; setup to output
    sbi OW_DDR, OW_BIT
    ; Pull output low
    cbi OW_PORT, OW_BIT
    ; Delay >480 usec        
    DELAY   480
    ; Critical timing period, disable interrupts.
    in temp1, SREG
    cli
    ; Pull output high
    sbi OW_PORT, OW_BIT
    ; make pin input, sends "1"
    cbi OW_DDR, OW_BIT 
    DELAY   64 ; delayB
    ; Sample input pin, set TOS if input is zero
    in tosl, OW_PIN
    sbrs tosl, OW_BIT
    ser  tosh
    ; End critical timing period, enable interrupts
    out SREG, temp1
    ; release bus
    cbi OW_DDR, OW_BIT
    cbi OW_PORT, OW_BIT

    ; Delay rest of 480 usec 
    DELAY   416
    ; we now have the result flag in TOS        
    mov tosl, tosh
    jmp_ DO_NEXT
    
;****f* 4e-onewire/OWSLOT
; NAME
;   OWSLOT
; SYNOPSIS
;   OWSLOT ( c -- c' ) Write and read one bit to/from 1-wire.
; DESCRIPTION
;   The "touch byte" function is described in Dallas App Note 74.
;   It outputs a byte to the 1-wire pin, LSB first, and reads back
;   the state of the 1-wire pin after a suitable delay.
;   To read a byte, output $FF and read the reply data.
;   To write a byte, output that byte and discard the reply.
;
;   This function performs one bit of the "touch" operation --
;   one read/write "slot" in Dallas jargon.  Perform this eight
;   times in a row to get the "touch byte" function.
;
; PARAMETERS
;   The input parameter is xxxxxxxxbbbbbbbo where
;   'xxxxxxxx' are don't cares,
;   'bbbbbbb' are bits to be shifted down, and
;   'o' is the bit to be output in the slot.  This must be 1
;   to create a read slot.
;
;   The returned value is xxxxxxxxibbbbbbb where
;   'xxxxxxxx' are not known (the input shifted down 1 position),
;   'i' is the bit read during the slot.  This has no meaning
;   if it was a write slot.
;   'bbbbbbb' are the 7 input bits, shifted down one position.
;
;   This peculiar parameter usage allows OWTOUCH to be written as
;     OWSLOT OWSLOT OWSLOT OWSLOT OWSLOT OWSLOT OWSLOT OWSLOT 
;
; NOTES 
;   Interrupts are disabled during each bit.

;   Timing, per DS18B20 data sheet:
;   a) Output "0" for start period.  (> 1 us, < 15 us, typ. 6 us*)
;   b) Output data bit (0 or 1), open drain 
;   c) After MS from start of cycle, sample input (15 to 60 us, typ. 25 us*)
;   d) After write-0 period from start of cycle, output "1" (>60 us)
;   e) After recovery period, loop or return. (> 1 us)
;   For writes, DS18B20 samples input 15 to 60 usec from start of cycle.
;   * "Typical" values are per App Note 132 for a 300m cable length.

;   ---------        -------------------------------
;            \      /                        /
;             ------------------------------- 
;            a      b          c             d     e
;            |  6us |   19us   |    35us     | 2us |
;******
; ( c -- c' )
; Hardware
; Write and read one bit to/from 1-wire.
VE_OW_SLOT:
    .dw $ff06
    .db "owslot"
    .dw VE_HEAD
    .set VE_HEAD = VE_OW_SLOT
XT_OW_SLOT:
    .dw PFA_OW_SLOT
PFA_OW_SLOT:
    ; pull low
    sbi OW_DDR, OW_BIT
    cbi OW_PORT, OW_BIT
    ; disable interrupts
    in temp1, SREG
    cli
    DELAY   6 ; DELAY A
    ; check bit
    clc
    ror tosl
    brcc PFA_OW_SLOT0 ; a 0 keeps the bus low
      ; release bus, a 1 is written
      cbi OW_DDR, OW_BIT
      sbi OW_PORT, OW_BIT
PFA_OW_SLOT0:
    ; sample the input (no action required if zero)
    DELAY 9   ; wait DELAY E to sample
    in temp0, OW_PIN
    sbrc temp0, OW_BIT
    ori tosl, $80

    DELAY   51 ; DELAY B
    cbi OW_DDR, OW_BIT
    sbi OW_PORT, OW_BIT ; release bus
    delay 2
    ; re-enable interrupts
    out SREG, temp1
    jmp_ DO_NEXT
