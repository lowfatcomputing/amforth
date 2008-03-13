# user modifiable secion is up here

MCU=atmega169

AMFORTH=../../core
AVRDUDE=avrdude
AVRA=avra
INCLUDE=-I ~/lib/avra -I $(AMFORTH)

AVRASM=wine ~/projekte/avr/AvrAssembler2/avrasm2.exe -I ~/projekte/avr/AvrAssembler2/Appnotes

USB=-c avr911  -P /dev/ttyUSB3
PP=-c stk200  -P /dev/parport0
JTAG=-c jtag2 -P /dev/ttyUSB2


bf: bf.hex
	$(AVRDUDE) $(USB) -p $(MCU) -e -U flash:w:bf.hex:i -U eeprom:w:bf.eep.hex:i

bf.hex: bf.asm $(AMFORTH)/*.asm $(AMFORTH)/words/*.asm $(AMFORTH)/devices/*.asm 
#	$(AVRA) $(INCLUDE) --listmac -l bf.lst -m bf.map bf.asm
	$(AVRASM) $(INCLUDE) -fI -v1 -W+iw  -e bf.eep.hex -l bf.lst bf.asm

bf.back:
	$(AVRDUDE) $(USB) -p $(MCU)  -U flash:r:bf.hex:i -U eeprom:r:bf.eep.hex:i

clean:
	rm -f bf.hex bf.eep.hex bf.lst bf.map bf.cof bf.obj

