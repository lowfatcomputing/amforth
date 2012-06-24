

\ common words for date&time

\ holds the ever increasing time ticks
variable time \ the seconds of the current day
variable date \ the current day

: dateinit
    0 time !
    0 day !
;

: time&date
    time @
    dup 3600 / >r
    r@ 3600 * - dup 60 / >r
    r@ 60 * -
    r> r>
    date @
;
