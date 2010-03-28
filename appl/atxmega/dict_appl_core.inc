.include "dict_core.inc"

.include "words/d-2star.asm"
.include "words/d-plus.asm"
.include "words/d-minus.asm"
.include "words/d-invert.asm"
.include "words/udot.asm"
.include "words/dot-s.asm"

.include "words/dotstring.asm"
.include "words/squote.asm"
.include "words/notequalzero.asm"
.include "words/words.asm"

.include "words/edefer.asm"
.include "words/rdefer.asm"
.include "words/is.asm"

;.include "drivers/usart-isr-rx.asm"
;.include "words/usart-rx-isr.asm"
.include "words/usartx-rx-poll.asm"
; use either interrupt transmit
;.include "drivers/usart-isr-tx.asm"
;.include "words/usart-tx-isr.asm"
; or use the poll transmit
.include "words/usartx-tx-poll.asm"
; 
.include "words/usartx.asm"

.include "words/applturnkey.asm"
.include "words/int-store.asm"
.include "words/int-fetch.asm"

.include "words/fill.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "drivers/atxmega_nvm.asm"
.include "words/ifetch.asm"
.include "words/istore_nvm.asm"
.include "words/estore_nvm.asm"
.include "words/efetch_nvm.asm"
