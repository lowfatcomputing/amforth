\ ----- Test AvrAsm -----

: loadtos, 16 Y+ ld, 17 Y+ ld, ; \ define macro
: savetos, -Y 17 st, -Y 16 st, ; \ tosl=r22, tosh=r23

code dup_  savetos, end-code   \ insert asm code
code drop_ loadtos, end-code

code ++_      \ ( x1 x2 x3 -- x4 ) 
  R8 push,    \ x4 = x1+x2+x3
  R8 2 ldi,   \ + +
 label>
  R16 Y+ ld,
  R17 Y+ ld,
  R22 R16 add,
  R23 R17 adc,
  R8 1 subi,
 <radr brne,
  R8 pop,
end-code

\ code demojmp \ demo jump + dup
\  adr> 0 jmp,       \ -+
\   label>           \  |  +>-+
\         clc,       \  |  |  |
\    adr> rjmp,      \  |  |  +-+
\         nop,       \  |  |    |
\    <labelr         \  |  |  +<+
\    adr> brcc,      \  |  |  +-+
\         nop,       \  |  |    |
\  rot <labell       \  +> |    |
\   swap <radr rjmp, \   '-+    |
\    <labelb         \        <-+
\         savetos,
\ end-code

\ code demojmp \ version with vector
\  adr> 0 jmp,   0 >lbl \ addr->lbl[0]
\   label>       1 >lbl
\         clc,
\    adr> rjmp,  2 >lbl
\         nop,
\    2 <lbl <labelr
\    adr> brcc,  3 >lbl
\         nop,
\  0 <lbl <labell       \ lbl[0]->tos
\   1 <lbl <radr rjmp,
\    3 <lbl <labelb
\         savetos,
\ end-code


2 3 4 ++_ .        \ 9
5 6 drop_ dup_ . . \ 5 5

\ end of file
