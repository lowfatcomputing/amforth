# user modifiable secion is up here
DEVICE=atmega169
PROGRAMMER=avr911
PORT=/dev/ttyUSB0

AVRDUDE=avrdude -c $(PROGRAMMER) -p $(DEVICE) -P $(PORT) 
AVRA=avra

bf.hex:	bf.asm usart.asm dict_low.asm dict_high.asm words/*.asm
	$(AVRA) -I ~/lib/avra --listmac -l bf.lst -m bf.map bf.asm

upload: bf.hex bf.eep.hex
	$(AVRDUDE) -e -U flash:w:bf.hex:i -U eeprom:w:bf.eep.hex:i

clean:
	rm -f bf.hex bf.eep.hex bf.lst bf.map bf.cof bf.obj
