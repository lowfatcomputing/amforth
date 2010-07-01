
.include "drivers/usart-isr-rx.asm"
.include "words/usart-rx-isr.asm"
;.include "words/usart-rx-poll.asm"

; use either interrupt transmit
;.include "drivers/usart-isr-tx.asm"
;.include "words/usart-tx-isr.asm"
; or use the poll transmit
.include "words/usart-tx-poll.asm"

.include "words/usart.asm"
