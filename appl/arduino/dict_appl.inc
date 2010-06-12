; this dictionary contains optional words
; they may be moved to the core dictionary if needed
.include "dict_minimum.inc"
.include "words/d-2star.asm"
.include "words/d-plus.asm"
.include "words/d-minus.asm"
.include "words/d-invert.asm"
.include "words/udot.asm"
.include "words/dot-s.asm"

.include "words/dotstring.asm"
.include "words/squote.asm"

.include "words/words.asm"

.include "words/edefer.asm"
.include "words/rdefer.asm"
.include "words/is.asm"


; use either interrupt rx
;.include "drivers/usart-isr-rx.asm"
;.include "words/usart-rx-isr.asm"

; or use the poll rx
.include "words/usart-rx-poll.asm"

; use either interrupt tx
;.include "drivers/usart-isr-tx.asm"
;.include "words/usart-tx-isr.asm"

; or use the poll tx
.include "words/usart-tx-poll.asm"
 

.include "words/usart.asm"
.include "words/applturnkey.asm"
.include "words/int-store.asm"
.include "words/1ms.asm"
.include "words/ms.asm"

.include "dict_compiler.inc"
.include "words/show-wordlist.asm"
