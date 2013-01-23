=======
TWI/I2C
=======

SCL Clock Calculator
--------------------

.. raw:: html
  :file: twi.html

Most client devices want a clock speed of 100kHz or 400 kHz. 
The bitrate regeister should be well above 10 if the controller
is the bus master.

::

 TWI (SCL) clock speed = CPU_clock/(16 + 2*bitrateregister*(4^prescaler))
 following the SCL clock speed in Hz for an 8Mhz device
                     f_cpu   8000000
      bitrate register (may be any value between 0 and 255)
               4      8       16      32      64      128    255
      prescaler                             
      0     333.333 250.000 166.667 100.000 55.556  29.412  15.209
      1     166.667 100.000 55.556  29.412  15.152  7.692   3.891
      2     55.556  29.412  15.152  7.692   3.876   1.946     978
      3     15.152  7.692   3.876   1.946     975     488     245

