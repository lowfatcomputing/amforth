\ simplified pid controller module
\ input x, output y, setpoint w
\ http://en.wikipedia.org/wiki/PID_controller
\  simplifications: time step is always 1
\    can windup
     
\ common usage
\   create a pid controller
\    pid: foo
\    foo pid.init foo pid.reset
\  set parameters
\   42 foo pid.kp! (proportional)
\   24 foo pid.ki! (integtral)
\   12 foo pid.kd! (differential)
\  144 foo pid.w!  (setpoint)

\ for any given input
\  x foo pid.control ( -- y)
    

\ pid ram structure
\  0 kp
\  1 ki
\  2 kd
\  3 w
\  4 e
\  5 sum(e)

marker -PID

: pid:
    create heap ,
    6 cells allot
    does>
    i@ ( -- pid )
;

: pid.kp!  ( kp pid -- )
   !
;
: pid.kp@ ( pid -- kp )
   @
;

: pid.ki! ( ki pid -- )
   cell+ !
;
: pid.ki@ ( pid -- )
   cell+ @ 
;

: pid.kd! ( kd pid -- )
   2 cells + !
;
: pid.kd@ ( pid -- kd ) 
  2 cells + @
;

: pid.w! ( w pid -- )
   3 cells + !
;
: pid.w@ ( pid -- w)
   3 cells + @
;

: pid.e! ( e pid -- )
   4 cells + !
;
: pid.e@ ( pid -- e)
   4 cells + @
;

: pid.init ( pid -- )
   1 over pid.kp!
   0 over pid.ki!
   0 swap pid.kd!
;

: pid.reset ( pid -- )
   0 over pid.e!
   0 swap 5 cells + ! \ sum(e)
;

: pid.esum+ ( e pid -- )
   5 cells +!
;

: pid.esum@ ( pid -- esum )
   5 cells + @ 
;


\ e = w - x
\ y = kp * e  + ki * sum(e) + kd*de
: pid.control ( x pid -- y )
   >r
        r@ pid.w@     - ( -- e)
   dup  r@ pid.esum+    ( -- e)
   dup  r@ pid.e@ - r@ pid.kd@ *      \ -- e kd*de )
        r@ pid.esum@  r@ pid.ki@ * +  \ -- e ( kd*de + ki*sum(e))
   over r@ pid.kp@ * +  ( -- e y)
   swap r> pid.e!  ( -- y)
;
