
\ PID Regler
\   status im RAM (letzter Fehler, Sollwert, Integration)
\   parameter im Flash Kd, Kp, Ki, max, min etc )

marker _pid_

\ Definitionswort: nimmt die Parameter entgegen,
\ allokiert EEPROM und RAM Platz, initialisiert selbigen
\ legt das Wort an.
( Kp Kd Ki "name"-- )
: pid: 
    create
    here dup , ( compile ram address to flash )
    3 cells allot ( allocate storage )
    0 over !
    cell+ 0 over ! ( initialize last value, int sum )
    cell+ 0 swap !
    , , ,      ( compile the pid parameters )
    does> ( runtime of pid )
    \ ( -- current iaddr )
    >r \ we'll need this address many times 
    r@ i@ cell+ @ ( -- current setpoint ) - ( -- e )
    \ calculate integration, limit esum
    dup r@ i@ cell+ cell+ dup @ ( -- e 'esum esum )
    rot ( -- 'esum esum e )
    + 1023 > if drop 1023 then  \ anti-windup ( -- e 'esum esum )
    dup 0<   if drop 0 then     \ anti-winddown ( -- e 'esum esum )
    swap ! ( -- e )
    \ clean up 
    r> drop
;

1 1 0 pid: testpid

1 testpid . ( messgroesse -- stellgroesse )
1 testpid . 
1 testpid .
