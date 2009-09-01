# user modifiable secion is up here

# AMFORTH=../../releases/2.0
AMFORTH=../../core
AVRDUDE=avrdude
INCLUDE=-I $(AMFORTH) -I $(AMFORTH)/devices/$(MCU)

AVRA=avra -I ../../Atmel/Appnotes
AVRASM=wine ../../Atmel/avrasm2.exe -I ../../Atmel/Appnotes2

USB=-c avr911  -P /dev/ttyUSB1
PP=-c stk200  -P /dev/parport0
JTAG=-c jtag1 -P /dev/ttyUSB1
ISP=-c avrispMKII -P usb
JDRG=-c dragon_jtag -P usb

p16: p16.hex
	$(AVRDUDE) $(JDRG) -p atmega32 -e -U flash:w:p16.hex:i -U eeprom:w:p16.eep.hex:i

p16.hex: p16.asm $(AMFORTH)/*.asm $(AMFORTH)/*.inc $(AMFORTH)/words/*.asm $(AMFORTH)/devices/*.asm 
	$(AVRA) $(INCLUDE) --listmac -l p16.lst -m p16.map p16.asm

p16.back:
	$(AVRDUDE) $(JDRG) -p atmega32  -U flash:r:p16.hex:i -U eeprom:r:p16.eep.hex:i

p8: p8.hex
	$(AVRDUDE) $(JDRG) -p atmega16 -e -U flash:w:p8.hex:i -U eeprom:w:p8.eep.hex:i

p8.hex: p8.asm $(AMFORTH)/*.asm $(AMFORTH)/*.inc $(AMFORTH)/words/*.asm $(AMFORTH)/devices/*.asm 
	$(AVRA) $(INCLUDE) --listmac -l p8.lst -m p8.map p8.asm

p8.back:
	$(AVRDUDE) $(PP) -p atmega16  -U flash:r:p8.hex:i -U eeprom:r:p8.eep.hex:i

p12: p12.hex
	$(AVRDUDE) $(JDRG) -p atmega644 -e -U flash:w:p12.hex:i -U eeprom:w:p12.eep.hex:i

p12.hex: p12.asm $(AMFORTH)/*.asm $(AMFORTH)/*.inc $(AMFORTH)/words/*.asm $(AMFORTH)/devices/*.asm 
	$(AVRASM) $(INCLUDE) -fI -v0 -e p12.eep.hex -l p12.lst p12.asm

p12.back:
	$(AVRDUDE) $(JDRG) -p atmega644  -U flash:r:p12.hex:i -U eeprom:r:p12.eep.hex:i

clean:
	rm -f p8.hex p8.eep.hex p8.lst p8.map p8.cof p8.obj
	rm -f p12.hex p12.eep.hex p12.lst p12.map p12.cof p12.obj
	rm -f p16.hex p16.eep.hex p16.lst p16.map p16.cof p16.obj

