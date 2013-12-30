
; some defaults

.set WANT_ISR_TX, 0
.set WANT_ISR_RX, 1
.set WANT_IGNORECASE, 0
.set WANT_UNIFIED, 0

; 10 per mille (1 per cent) is ok.
.set BAUD_MAXERROR, 10

; Dictionary setup
.set VE_HEAD, 0x0000
.set VE_ENVHEAD, 0x0000

#include "user.inc"

  .set zerol, 2
  .set zeroh, 3
  .set upl, 4
  .set uph, 5

  .set al, 6
  .set ah, 7
  .set bl, 8
  .set bh, 9

  .set temp4, 14
  .set temp5, 15

  .set temp0, 16
  .set temp1, 17
  .set temp2, 18
  .set temp3, 19

  .set temp6, 20
  .set temp7, 21

  .set tosl, 24
  .set tosh, 25

  .set wl, 22
  .set wh, 23

.macro loadtos
    ld tosl, Y+
    ld tosh, Y+
.endm

.macro savetos
    st -Y, tosh
    st -Y, tosl
.endm

.macro in_ arg0, arg1
.if (\arg1 < 0x40)
  in \arg0,\arg1
.else
  lds \arg0,\arg1
.endif
.endm

.macro out_ arg0, arg1
.if (\arg0 < 0x40)
  out \arg0,\arg1
.else
  sts \arg0,\arg1
.endif
.endm

.macro sbi_ arg0, arg1, arg2
.if (\arg0 < 0x40)
  sbi \arg0,\arg1
.else
  in_ \arg2,\arg0
  ori \arg2,exp2(\arg1)
  out_ \arg0,\arg2
.endif
.endm

.macro cbi_ arg0, arg1, arg2
.if (\arg0 < 0x40)
  cbi \arg0,\arg1
.else
  in_ \arg2,\arg0
  andi \arg2,~(exp2(\arg1))
  out_ \arg0,\arg2
.endif
.endm

.macro jmp_ arg0
	; a more flexible macro
    .ifdef \arg0
    .if (\arg0-. > 2040) || (.-\arg0>2040)
	jmp \arg0
	.else
	rjmp \arg0
	.endif
	.else
	jmp \arg0
	.endif
.endm

.macro call_ arg0
	; a more flexible macro
    .ifdef \arg0
    .if (\arg0-. > 2040) || (.-\arg0>2040)
	call \arg0
	.else
	rcall \arg0
	.endif
	.else
	call \arg0
	.endif
.endm

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
; busy waits a specfied amount of microseconds
.macro   delay arg0
      .set cycles , ( ( \arg0 * F_CPU ) / 1000000 )
      .if (cycles > ( 256 * 255 * 4 + 2))
        .error "MACRO delay - too many cycles to burn"
      .else
        .if (cycles > 6)
          .set  loop_cycles , (cycles / 4)      
          ldi   ZL,lo8(loop_cycles)
          ldi   ZH,hi8(loop_cycles)
delay_loop:
          sbiw  ZL, 1
          brne  delay_loop
          .set  cycles , (cycles - (loop_cycles * 4))
        .endif
        .if (cycles > 0)
          .if   (cycles & 4)
            rjmp  .+1
            rjmp  .+1
          .endif
          .if   (cycles & 2)
            rjmp  .+1
          .endif
          .if   (cycles & 1)
            nop
          .endif
        .endif
      .endif
.endm
