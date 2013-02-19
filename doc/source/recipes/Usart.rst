==============
Usart Settings
==============

There is some confusion concerning how usart settings should be made.

During assembly, the typical error message looks like

::

  atmega16.asm(26): warning: Use of undefined or forward referenced symbol 'TXEN0' in .equ/.set

The symbol naming is based upon Atmel's naming conventions. If the controller has only
one usart module, it is named either <tt>usart</tt> or <tt>usart0</tt>. Newer Atmegas use the
0 regardless of the real number of usart moules, older types omit the 0 completly. You definitly
have to check the datasheet.

The following controllers use the old schema, they need the <tt>usart</tt> file:

::

 8515def.inc:.equ    RXEN    = 4 ; Receiver Enable
 8535def.inc:.equ    RXEN    = 4 ; Receiver Enable
 m103def.inc:.equ    RXEN    = 4 ; Receiver Enable
 m163def.inc:.equ    RXEN    = 4 ; Receiver Enable
 m16Adef.inc:.equ    RXEN    = 4 ; Receiver Enable
 m16def.inc:.equ RXEN    = 4 ; Receiver Enable
 m323def.inc:.equ    RXEN    = 4 ; Receiver Enable
 m32Adef.inc:.equ    RXEN    = 4 ; Receiver Enable
 m32def.inc:.equ RXEN    = 4 ; Receiver Enable
 m8515def.inc:.equ   RXEN    = 4 ; Receiver Enable
 m8535def.inc:.equ   RXEN    = 4 ; Receiver Enable
 m8Adef.inc:.equ RXEN    = 4 ; Receiver Enable
 m8def.inc:.equ  RXEN    = 4 ; Receiver Enable
 pwm216def.inc:.equ  RXEN    = 4 ; Receiver Enable
 pwm2Bdef.inc:.equ   RXEN    = 4 ; Receiver Enable
 pwm2def.inc:.equ    RXEN    = 4 ; Receiver Enable
 pwm316def.inc:.equ  RXEN    = 4 ; Receiver Enable
 pwm3Bdef.inc:.equ   RXEN    = 4 ; Receiver Enable
 pwm3def.inc:.equ    RXEN    = 4 ; Receiver Enable

All others use a number.

A simple approach that works in most cases is as follows: delete/change all 
occurances of the 0 character in the following excerpt from your version of the 
<tt>template.asm</tt> file.

::

 .include "drivers/usart_0.asm"

Please note, that the file is named :file:`drivers/usart.asm` not 
:file:`drivers/usart_.asm`.

Similiar changes are needed for the other usart modules (e.g. usart3).
