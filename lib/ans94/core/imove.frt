\ copy a string from flash to RAM

: imove ( i-addr len ram -- )
  rot rot     ( -- ram i-addr len )
  2/ 1+       ( -- ram i-addr f-cells )
  over + swap
  ?do
    i @i over ! cell+
  loop
  drop
;
