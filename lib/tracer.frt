\ tracer Emma Ledwidge's and Gerry
\ flag to dynamically turn trace output
\ on and off
variable tracing
: on true swap ! ; 
: off 0 swap ! ; 
: tracer tracing @ if cr itype cr .s else drop drop then ; 

: : >in @ >r : r> >in ! 
    parse-name postpone sliteral postpone tracer
;
