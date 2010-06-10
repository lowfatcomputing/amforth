Author: Andy Kirby (andy@kirbyand.co.uk), Based on the Amforth Application Template.
modified by Matthias Trute

This is a demo application template for using a standard off the shelf 
Arduino Mega board (or clone) as an Amforth development system.

Notes

1. Whilst most errors and problems you encounter are likely to be those 
   I have created rather than the original code on which this is based, 
   please report forward comments, feedback, reports, bugs, fixes and 
   patches etc through the Amforth Projects development mailing lists 
   and forums etc.

2. The binary Amforth images cannot be loaded/programmed using the Arduino 
   Bootloader. An ICSP programmer (avrisp, etc) must be used to load the image.

3. The Arduino bootloader is over writen with the Amforth code and is no 
   longer available after programing. To restore your board for use with 
   the Arduino IDE you must overwrite the Amforth image with an Arduino 
   Bootloader image.

4. Programmed with fuses set F7 D9 FF (Mega), you should not need to change them.
